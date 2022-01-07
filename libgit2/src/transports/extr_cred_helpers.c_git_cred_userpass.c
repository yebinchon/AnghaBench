
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* username; int password; } ;
typedef TYPE_1__ git_cred_userpass_payload ;
typedef int git_cred ;


 unsigned int GIT_CREDTYPE_USERNAME ;
 unsigned int GIT_CREDTYPE_USERPASS_PLAINTEXT ;
 int GIT_UNUSED (char const*) ;
 int git_cred_username_new (int **,char const*) ;
 scalar_t__ git_cred_userpass_plaintext_new (int **,char const*,int ) ;

int git_cred_userpass(
  git_cred **cred,
  const char *url,
  const char *user_from_url,
  unsigned int allowed_types,
  void *payload)
{
 git_cred_userpass_payload *userpass = (git_cred_userpass_payload*)payload;
 const char *effective_username = ((void*)0);

 GIT_UNUSED(url);

 if (!userpass || !userpass->password) return -1;
 if (userpass->username)
  effective_username = userpass->username;
 else if (user_from_url)
  effective_username = user_from_url;
 else
  return -1;

 if (GIT_CREDTYPE_USERNAME & allowed_types)
  return git_cred_username_new(cred, effective_username);

 if ((GIT_CREDTYPE_USERPASS_PLAINTEXT & allowed_types) == 0 ||
   git_cred_userpass_plaintext_new(cred, effective_username, userpass->password) < 0)
  return -1;

 return 0;
}
