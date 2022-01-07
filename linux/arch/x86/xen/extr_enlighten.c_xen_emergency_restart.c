
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int reboot_reason ;
 int xen_reboot (int ) ;

void xen_emergency_restart(void)
{
 xen_reboot(reboot_reason);
}
