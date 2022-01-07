
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_GLOB_PATHSPECS_ENVIRONMENT ;
 int git_env_bool (int ,int ) ;

__attribute__((used)) static inline int get_glob_global(void)
{
 static int glob = -1;

 if (glob < 0)
  glob = git_env_bool(GIT_GLOB_PATHSPECS_ENVIRONMENT, 0);

 return glob;
}
