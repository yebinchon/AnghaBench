
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int omap_prm_reset_system () ;

void am33xx_restart(enum reboot_mode mode, const char *cmd)
{


 omap_prm_reset_system();
}
