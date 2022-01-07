
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int diff_indent_heuristic ;
 int git_config_bool (char const*,char const*) ;
 int strcmp (char const*,char*) ;

int git_diff_heuristic_config(const char *var, const char *value, void *cb)
{
 if (!strcmp(var, "diff.indentheuristic"))
  diff_indent_heuristic = git_config_bool(var, value);
 return 0;
}
