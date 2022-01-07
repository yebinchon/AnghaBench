
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_cred ;


 unsigned int GIT_CREDTYPE_DEFAULT ;
 unsigned int GIT_CREDTYPE_SSH_KEY ;
 unsigned int GIT_CREDTYPE_USERNAME ;
 unsigned int GIT_CREDTYPE_USERPASS_PLAINTEXT ;
 int GIT_UNUSED (void*) ;
 int _remote_default ;
 int _remote_pass ;
 int _remote_ssh_key ;
 int _remote_ssh_passphrase ;
 int _remote_ssh_pubkey ;
 int _remote_user ;
 int git_cred_default_new (int **) ;
 int git_cred_ssh_key_new (int **,int ,int ,int ,int ) ;
 int git_cred_username_new (int **,int ) ;
 int git_cred_userpass_plaintext_new (int **,int ,int ) ;
 int printf (char*) ;

__attribute__((used)) static int cred_acquire_cb(
 git_cred **cred,
 const char *url,
 const char *user_from_url,
 unsigned int allowed_types,
 void *payload)
{
 GIT_UNUSED(url);
 GIT_UNUSED(user_from_url);
 GIT_UNUSED(payload);

 if (GIT_CREDTYPE_USERNAME & allowed_types) {
  if (!_remote_user) {
   printf("GITTEST_REMOTE_USER must be set\n");
   return -1;
  }

  return git_cred_username_new(cred, _remote_user);
 }

 if (GIT_CREDTYPE_DEFAULT & allowed_types) {
  if (!_remote_default) {
   printf("GITTEST_REMOTE_DEFAULT must be set to use NTLM/Negotiate credentials\n");
   return -1;
  }

  return git_cred_default_new(cred);
 }

 if (GIT_CREDTYPE_SSH_KEY & allowed_types) {
  if (!_remote_user || !_remote_ssh_pubkey || !_remote_ssh_key || !_remote_ssh_passphrase) {
   printf("GITTEST_REMOTE_USER, GITTEST_REMOTE_SSH_PUBKEY, GITTEST_REMOTE_SSH_KEY and GITTEST_REMOTE_SSH_PASSPHRASE must be set\n");
   return -1;
  }

  return git_cred_ssh_key_new(cred, _remote_user, _remote_ssh_pubkey, _remote_ssh_key, _remote_ssh_passphrase);
 }

 if (GIT_CREDTYPE_USERPASS_PLAINTEXT & allowed_types) {
  if (!_remote_user || !_remote_pass) {
   printf("GITTEST_REMOTE_USER and GITTEST_REMOTE_PASS must be set\n");
   return -1;
  }

  return git_cred_userpass_plaintext_new(cred, _remote_user, _remote_pass);
 }

 return -1;
}
