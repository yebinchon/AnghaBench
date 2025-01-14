
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ suspend_state_t ;
struct TYPE_2__ {int save_count; int (* restore ) (scalar_t__*) ;int (* enter ) (scalar_t__) ;int (* save ) (scalar_t__*) ;} ;


 int HWCAP_IWMMXT ;
 scalar_t__ PM_SUSPEND_STANDBY ;
 int elf_hwcap ;
 int iwmmxt_task_disable (int *) ;
 int lubbock_set_hexled (int) ;
 int pr_debug (char*) ;
 TYPE_1__* pxa_cpu_pm_fns ;
 scalar_t__* sleep_save ;
 int stub1 (scalar_t__*) ;
 int stub2 (scalar_t__) ;
 int stub3 (scalar_t__) ;
 int stub4 (scalar_t__*) ;

int pxa_pm_enter(suspend_state_t state)
{
 unsigned long sleep_save_checksum = 0, checksum = 0;
 int i;
 if (state != PM_SUSPEND_STANDBY && pxa_cpu_pm_fns->save) {
  pxa_cpu_pm_fns->save(sleep_save);

  for (i = 0; i < pxa_cpu_pm_fns->save_count - 1; i++)
   sleep_save_checksum += sleep_save[i];
 }


 pxa_cpu_pm_fns->enter(state);

 if (state != PM_SUSPEND_STANDBY && pxa_cpu_pm_fns->restore) {

  for (i = 0; i < pxa_cpu_pm_fns->save_count - 1; i++)
   checksum += sleep_save[i];


  if (checksum != sleep_save_checksum) {

   lubbock_set_hexled(0xbadbadc5);

   while (1)
    pxa_cpu_pm_fns->enter(state);
  }
  pxa_cpu_pm_fns->restore(sleep_save);
 }

 pr_debug("*** made it back from resume\n");

 return 0;
}
