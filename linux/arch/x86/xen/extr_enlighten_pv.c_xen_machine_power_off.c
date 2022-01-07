
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHUTDOWN_poweroff ;
 int pm_power_off () ;
 int xen_reboot (int ) ;

__attribute__((used)) static void xen_machine_power_off(void)
{
 if (pm_power_off)
  pm_power_off();
 xen_reboot(SHUTDOWN_poweroff);
}
