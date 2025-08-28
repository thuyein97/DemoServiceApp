terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region                   = "us-east-1"
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "vscode"
}

terraform {
  backend "s3" {
    key    = "terraform.tfstate"
    bucket = "terraformcode2000"
    region = "us-east-1"
    profile = "vscode"
  }
}