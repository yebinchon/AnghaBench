
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ suspend_state_t ;
struct TYPE_2__ {int save_count; int (* restore ) (scalar_t__*) ;int (* enter ) (scalar_t__) ;int (* save ) (scalar_t__*) ;} ;


 scalar_t__ PM_SUSPEND_STANDBY ;
 int cpu_init () ;
 int pci_puv3_preinit () ;
 int pr_debug (char*) ;
 TYPE_1__* puv3_cpu_pm_fns ;
 int puv3_ps2_init () ;
 scalar_t__* sleep_save ;
 int stub1 (scalar_t__*) ;
 int stub2 (scalar_t__) ;
 int stub3 (scalar_t__) ;
 int stub4 (scalar_t__*) ;

int puv3_pm_enter(suspend_state_t state)
{
 unsigned long sleep_save_checksum = 0, checksum = 0;
 int i;


 if (state != PM_SUSPEND_STANDBY) {
  puv3_cpu_pm_fns->save(sleep_save);

  for (i = 0; i < puv3_cpu_pm_fns->save_count - 1; i++)
   sleep_save_checksum += sleep_save[i];
 }


 puv3_cpu_pm_fns->enter(state);
 cpu_init();






 if (state != PM_SUSPEND_STANDBY) {

  for (i = 0; i < puv3_cpu_pm_fns->save_count - 1; i++)
   checksum += sleep_save[i];


  if (checksum != sleep_save_checksum) {
   while (1)
    puv3_cpu_pm_fns->enter(state);
  }
  puv3_cpu_pm_fns->restore(sleep_save);
 }

 pr_debug("*** made it back from resume\n");

 return 0;
}
