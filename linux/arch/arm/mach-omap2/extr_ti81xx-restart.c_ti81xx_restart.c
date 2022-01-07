
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int TI81XX_GLOBAL_RST_COLD ;
 int TI81XX_PRM_DEVICE_RSTCTRL ;
 int omap2_prm_set_mod_reg_bits (int ,int ,int ) ;

void ti81xx_restart(enum reboot_mode mode, const char *cmd)
{
 omap2_prm_set_mod_reg_bits(TI81XX_GLOBAL_RST_COLD, 0,
       TI81XX_PRM_DEVICE_RSTCTRL);
 while (1);
}
