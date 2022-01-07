
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shutdown_trigger {int name; } ;


 int ON_HALT_STR ;
 int ON_PANIC_STR ;
 int ON_POFF_STR ;
 int ON_REIPL_STR ;
 int ON_RESTART_STR ;
 int __cpcmd (char*,int *,int ,int *) ;
 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ strlen (char*) ;
 char* vmcmd_on_halt ;
 char* vmcmd_on_panic ;
 char* vmcmd_on_poff ;
 char* vmcmd_on_reboot ;
 char* vmcmd_on_restart ;

__attribute__((used)) static void vmcmd_run(struct shutdown_trigger *trigger)
{
 char *cmd;

 if (strcmp(trigger->name, ON_REIPL_STR) == 0)
  cmd = vmcmd_on_reboot;
 else if (strcmp(trigger->name, ON_PANIC_STR) == 0)
  cmd = vmcmd_on_panic;
 else if (strcmp(trigger->name, ON_HALT_STR) == 0)
  cmd = vmcmd_on_halt;
 else if (strcmp(trigger->name, ON_POFF_STR) == 0)
  cmd = vmcmd_on_poff;
 else if (strcmp(trigger->name, ON_RESTART_STR) == 0)
  cmd = vmcmd_on_restart;
 else
  return;

 if (strlen(cmd) == 0)
  return;
 __cpcmd(cmd, ((void*)0), 0, ((void*)0));
}
