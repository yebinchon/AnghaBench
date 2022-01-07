
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_cred ;


 int GIT_UNUSED (void*) ;
 int _remote_proxy_pass ;
 int _remote_proxy_user ;
 int called_proxy_creds ;
 int git_cred_userpass_plaintext_new (int **,int ,int ) ;

__attribute__((used)) static int proxy_cred_cb(git_cred **out, const char *url, const char *username, unsigned int allowed, void *payload)
{
 GIT_UNUSED(url);
 GIT_UNUSED(username);
 GIT_UNUSED(allowed);
 GIT_UNUSED(payload);

 called_proxy_creds = 1;
 return git_cred_userpass_plaintext_new(out, _remote_proxy_user, _remote_proxy_pass);
}
