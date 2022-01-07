
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_pager_config (char const*) ;
 int commit_pager_choice () ;
 scalar_t__ pager_in_use () ;
 int use_pager ;

void setup_auto_pager(const char *cmd, int def)
{
 if (use_pager != -1 || pager_in_use())
  return;
 use_pager = check_pager_config(cmd);
 if (use_pager == -1)
  use_pager = def;
 commit_pager_choice();
}
