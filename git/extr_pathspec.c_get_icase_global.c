
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ICASE_PATHSPECS_ENVIRONMENT ;
 int git_env_bool (int ,int ) ;

__attribute__((used)) static inline int get_icase_global(void)
{
 static int icase = -1;

 if (icase < 0)
  icase = git_env_bool(GIT_ICASE_PATHSPECS_ENVIRONMENT, 0);

 return icase;
}
