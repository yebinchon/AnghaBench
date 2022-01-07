
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_cred ;


 unsigned int GIT_CREDTYPE_DEFAULT ;
 int GIT_UNUSED (void*) ;
 int git_cred_default_new (int **) ;

int cred_default(
 git_cred **cred,
 const char *url,
 const char *user_from_url,
 unsigned int allowed_types,
 void *payload)
{
 GIT_UNUSED(url);
 GIT_UNUSED(user_from_url);
 GIT_UNUSED(payload);

 if (!(allowed_types & GIT_CREDTYPE_DEFAULT))
  return 0;

 return git_cred_default_new(cred);
}
