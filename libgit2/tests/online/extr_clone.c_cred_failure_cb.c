
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_cred ;


 int GIT_UNUSED (void*) ;

__attribute__((used)) static int cred_failure_cb(
 git_cred **cred,
 const char *url,
 const char *username_from_url,
 unsigned int allowed_types,
 void *data)
{
 GIT_UNUSED(cred); GIT_UNUSED(url); GIT_UNUSED(username_from_url);
 GIT_UNUSED(allowed_types); GIT_UNUSED(data);
 return -172;
}
