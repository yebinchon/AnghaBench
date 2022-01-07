
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int long_name; } ;


 int RECURSE_SUBMODULES_OFF ;
 int RECURSE_SUBMODULES_ON ;
 int config_update_recurse_submodules ;
 int parse_update_recurse_submodules_arg (int ,char const*) ;

int option_parse_recurse_submodules_worktree_updater(const struct option *opt,
           const char *arg, int unset)
{
 if (unset) {
  config_update_recurse_submodules = RECURSE_SUBMODULES_OFF;
  return 0;
 }
 if (arg)
  config_update_recurse_submodules =
   parse_update_recurse_submodules_arg(opt->long_name,
           arg);
 else
  config_update_recurse_submodules = RECURSE_SUBMODULES_ON;

 return 0;
}
