
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXEC_PATH_ENVIRONMENT ;
 int GIT_EXEC_PATH ;
 char const* exec_path_value ;
 char* getenv (int ) ;
 char* system_path (int ) ;
 char* xstrdup (char const*) ;

const char *git_exec_path(void)
{
 if (!exec_path_value) {
  const char *env = getenv(EXEC_PATH_ENVIRONMENT);
  if (env && *env)
   exec_path_value = xstrdup(env);
  else
   exec_path_value = system_path(GIT_EXEC_PATH);
 }
 return exec_path_value;
}
