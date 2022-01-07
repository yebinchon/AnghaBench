
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int suspend_state_t ;
struct TYPE_6__ {int suspended; } ;
struct TYPE_4__ {scalar_t__ mode; } ;
struct TYPE_5__ {TYPE_1__ data; } ;


 scalar_t__ AT91_PM_BACKUP ;
 int at91_pm_suspend_in_sram ;
 int at91_pm_suspend_in_sram_sz ;
 int at91_suspend_finish (int ) ;
 int at91_suspend_sram_fn ;
 int cpu_suspend (int ,int (*) (int )) ;
 int fncpy (int ,int *,int ) ;
 int outer_resume () ;
 TYPE_3__* pm_bu ;
 TYPE_2__ soc_pm ;

__attribute__((used)) static void at91_pm_suspend(suspend_state_t state)
{
 if (soc_pm.data.mode == AT91_PM_BACKUP) {
  pm_bu->suspended = 1;

  cpu_suspend(0, at91_suspend_finish);


  at91_suspend_sram_fn = fncpy(at91_suspend_sram_fn,
          &at91_pm_suspend_in_sram,
          at91_pm_suspend_in_sram_sz);
 } else {
  at91_suspend_finish(0);
 }

 outer_resume();
}
