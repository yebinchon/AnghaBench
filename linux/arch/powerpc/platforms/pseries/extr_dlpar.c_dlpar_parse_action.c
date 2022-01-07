
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseries_hp_errorlog {int action; } ;


 int EINVAL ;
 int PSERIES_HP_ELOG_ACTION_ADD ;
 int PSERIES_HP_ELOG_ACTION_REMOVE ;
 int pr_err (char*) ;
 char* strsep (char**,char*) ;
 scalar_t__ sysfs_streq (char*,char*) ;

__attribute__((used)) static int dlpar_parse_action(char **cmd, struct pseries_hp_errorlog *hp_elog)
{
 char *arg;

 arg = strsep(cmd, " ");
 if (!arg)
  return -EINVAL;

 if (sysfs_streq(arg, "add")) {
  hp_elog->action = PSERIES_HP_ELOG_ACTION_ADD;
 } else if (sysfs_streq(arg, "remove")) {
  hp_elog->action = PSERIES_HP_ELOG_ACTION_REMOVE;
 } else {
  pr_err("Invalid action specified.\n");
  return -EINVAL;
 }

 return 0;
}
