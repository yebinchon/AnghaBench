
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AM33XX_RM_GFX_RSTCTRL_OFFSET ;
 int AM33XX_RM_GFX_RSTST_OFFSET ;
 int AM33XX_RM_PER_RSTCTRL_OFFSET ;
 int RSTCTRL (int ,int ) ;
 int RSTST (int ,int ) ;
 int am33xx_gfx_hwmod ;
 int am33xx_pruss_hwmod ;

__attribute__((used)) static void omap_hwmod_am33xx_rst(void)
{
 RSTCTRL(am33xx_pruss_hwmod, AM33XX_RM_PER_RSTCTRL_OFFSET);
 RSTCTRL(am33xx_gfx_hwmod, AM33XX_RM_GFX_RSTCTRL_OFFSET);
 RSTST(am33xx_gfx_hwmod, AM33XX_RM_GFX_RSTST_OFFSET);
}
