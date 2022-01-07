
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int SHUTDOWN_reboot ;
 int xen_reboot (int ) ;

__attribute__((used)) static void xen_restart(enum reboot_mode reboot_mode, const char *cmd)
{
 xen_reboot(SHUTDOWN_reboot);
}
