
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int omap3_ctrl_write_boot_mode (int ) ;
 int omap_prm_reset_system () ;

void omap3xxx_restart(enum reboot_mode mode, const char *cmd)
{
 omap3_ctrl_write_boot_mode((cmd ? (u8)*cmd : 0));
 omap_prm_reset_system();
}
