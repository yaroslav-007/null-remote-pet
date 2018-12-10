
data "terraform_remote_state" "pet" {
  backend = "atlas"
  config {
    name = "yaro-org/random_pet"
  }
}


resource "null_resource" "helloWorld" {
  provisioner "local-exec" {
    command = "echo This generates name the following hostname  web-${data.terraform_remote_state.pet.pet_id}"
  }
}
