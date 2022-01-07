
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_env_bool (char*,int ) ;

int pager_in_use(void)
{
 return git_env_bool("GIT_PAGER_IN_USE", 0);
}
