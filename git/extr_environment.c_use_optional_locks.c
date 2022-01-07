
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OPTIONAL_LOCKS_ENVIRONMENT ;
 int git_env_bool (int ,int) ;

int use_optional_locks(void)
{
 return git_env_bool(GIT_OPTIONAL_LOCKS_ENVIRONMENT, 1);
}
