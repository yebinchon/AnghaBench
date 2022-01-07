
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEH_ENABLED ;
 int EEH_FORCE_DISABLED ;
 scalar_t__ eeh_has_flag (int ) ;
 int pr_info (char*) ;

void eeh_show_enabled(void)
{
 if (eeh_has_flag(EEH_FORCE_DISABLED))
  pr_info("EEH: Recovery disabled by kernel parameter.\n");
 else if (eeh_has_flag(EEH_ENABLED))
  pr_info("EEH: Capable adapter found: recovery enabled.\n");
 else
  pr_info("EEH: No capable adapters found: recovery disabled.\n");
}
