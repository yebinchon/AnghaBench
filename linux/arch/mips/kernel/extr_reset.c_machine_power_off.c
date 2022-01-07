
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int machine_hang () ;
 int pm_power_off () ;
 int preempt_disable () ;
 int smp_send_stop () ;

void machine_power_off(void)
{
 if (pm_power_off)
  pm_power_off();





 machine_hang();
}
