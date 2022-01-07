
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RECURSE_SUBMODULES_OFF ;
 int RECURSE_SUBMODULES_ON ;
 int config_update_recurse_submodules ;
 scalar_t__ git_config_bool (char const*,char const*) ;
 int strcmp (char const*,char*) ;

int git_default_submodule_config(const char *var, const char *value, void *cb)
{
 if (!strcmp(var, "submodule.recurse")) {
  int v = git_config_bool(var, value) ?
   RECURSE_SUBMODULES_ON : RECURSE_SUBMODULES_OFF;
  config_update_recurse_submodules = v;
 }
 return 0;
}
