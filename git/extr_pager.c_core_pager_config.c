
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_string (int *,char const*,char const*) ;
 int pager_program ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int core_pager_config(const char *var, const char *value, void *data)
{
 if (!strcmp(var, "core.pager"))
  return git_config_string(&pager_program, var, value);
 return 0;
}
