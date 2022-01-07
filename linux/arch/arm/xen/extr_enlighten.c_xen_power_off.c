
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHUTDOWN_poweroff ;
 int xen_reboot (int ) ;

__attribute__((used)) static void xen_power_off(void)
{
 xen_reboot(SHUTDOWN_poweroff);
}
