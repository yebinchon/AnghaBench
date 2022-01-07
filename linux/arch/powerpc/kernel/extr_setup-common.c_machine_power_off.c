
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int machine_hang () ;
 int machine_shutdown () ;
 int pm_power_off () ;
 int smp_send_stop () ;

void machine_power_off(void)
{
 machine_shutdown();
 if (pm_power_off)
  pm_power_off();

 smp_send_stop();
 machine_hang();
}
