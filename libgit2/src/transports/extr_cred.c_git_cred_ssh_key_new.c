
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_cred ;


 int GIT_CREDTYPE_SSH_KEY ;
 int git_cred_ssh_key_type_new (int **,char const*,char const*,char const*,char const*,int ) ;

int git_cred_ssh_key_new(
 git_cred **cred,
 const char *username,
 const char *publickey,
 const char *privatekey,
 const char *passphrase)
{
 return git_cred_ssh_key_type_new(
  cred,
  username,
  publickey,
  privatekey,
  passphrase,
  GIT_CREDTYPE_SSH_KEY);
}
