
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pm_system_wakeup () ;
 unsigned int pm_wakeup_irq ;

void pm_system_irq_wakeup(unsigned int irq_number)
{
 if (pm_wakeup_irq == 0) {
  pm_wakeup_irq = irq_number;
  pm_system_wakeup();
 }
}
