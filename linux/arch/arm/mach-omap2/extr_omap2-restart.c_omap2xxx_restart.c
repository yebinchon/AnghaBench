
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int clk_get_rate (int ) ;
 int clk_set_rate (int ,int ) ;
 int omap_prm_reset_system () ;
 int reset_sys_ck ;
 int reset_virt_prcm_set_ck ;

void omap2xxx_restart(enum reboot_mode mode, const char *cmd)
{
 u32 rate;

 rate = clk_get_rate(reset_sys_ck);
 clk_set_rate(reset_virt_prcm_set_ck, rate);



 omap_prm_reset_system();
}
