
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;
 int pm_power_off () ;
 int smp_send_stop () ;

void machine_power_off(void)
{
 local_irq_disable();
 smp_send_stop();

 if (pm_power_off)
  pm_power_off();
}
