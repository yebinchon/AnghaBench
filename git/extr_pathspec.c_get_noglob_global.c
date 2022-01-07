
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_NOGLOB_PATHSPECS_ENVIRONMENT ;
 int git_env_bool (int ,int ) ;

__attribute__((used)) static inline int get_noglob_global(void)
{
 static int noglob = -1;

 if (noglob < 0)
  noglob = git_env_bool(GIT_NOGLOB_PATHSPECS_ENVIRONMENT, 0);

 return noglob;
}
