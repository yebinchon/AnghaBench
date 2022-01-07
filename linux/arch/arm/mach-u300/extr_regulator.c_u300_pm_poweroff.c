
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_BLOCK ;
 int SIG_SETMASK ;
 scalar_t__ main_power_15 ;
 int pr_err (char*) ;
 int regulator_disable (scalar_t__) ;
 int sigfillset (int *) ;
 int sigprocmask (int ,int *,int *) ;

void u300_pm_poweroff(void)
{
 sigset_t old, all;

 sigfillset(&all);
 if (!sigprocmask(SIG_BLOCK, &all, &old)) {

  if (main_power_15)
   regulator_disable(main_power_15);
  else
   pr_err("regulator not available to shut down system\n");
  (void) sigprocmask(SIG_SETMASK, &old, ((void*)0));
 }
 return;
}
