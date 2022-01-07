
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_cred ;


 unsigned int GIT_CREDTYPE_SSH_KEY ;
 unsigned int GIT_CREDTYPE_USERNAME ;
 int GIT_ERROR_NET ;
 int GIT_UNUSED (void*) ;
 int _remote_ssh_passphrase ;
 int _remote_ssh_privkey ;
 int _remote_ssh_pubkey ;
 int _remote_user ;
 int free (char*) ;
 int git_cred_ssh_key_memory_new (int **,int ,char*,char*,int ) ;
 int git_cred_username_new (int **,int ) ;
 int git_error_set (int ,char*) ;
 char* read_key_file (int ) ;

__attribute__((used)) static int ssh_memory_cred_cb(git_cred **cred, const char *url, const char *user_from_url,
     unsigned int allowed_types, void *payload)
{
 GIT_UNUSED(url); GIT_UNUSED(user_from_url); GIT_UNUSED(payload);

 if (allowed_types & GIT_CREDTYPE_USERNAME)
  return git_cred_username_new(cred, _remote_user);

 if (allowed_types & GIT_CREDTYPE_SSH_KEY)
 {
  char *pubkey = read_key_file(_remote_ssh_pubkey);
  char *privkey = read_key_file(_remote_ssh_privkey);

  int ret = git_cred_ssh_key_memory_new(cred, _remote_user, pubkey, privkey, _remote_ssh_passphrase);

  if (privkey)
   free(privkey);
  if (pubkey)
   free(pubkey);
  return ret;
 }

 git_error_set(GIT_ERROR_NET, "unexpected cred type");
 return -1;
}
