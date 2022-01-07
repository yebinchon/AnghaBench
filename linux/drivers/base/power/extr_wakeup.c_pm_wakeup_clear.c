
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_set (int *,int ) ;
 int pm_abort_suspend ;
 scalar_t__ pm_wakeup_irq ;

void pm_wakeup_clear(bool reset)
{
 pm_wakeup_irq = 0;
 if (reset)
  atomic_set(&pm_abort_suspend, 0);
}
