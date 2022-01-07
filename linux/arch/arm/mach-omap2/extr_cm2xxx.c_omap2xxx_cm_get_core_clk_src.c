
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CM_CLKSEL2 ;
 int OMAP24XX_CORE_CLK_SRC_MASK ;
 int PLL_MOD ;
 int omap2_cm_read_mod_reg (int ,int ) ;

u32 omap2xxx_cm_get_core_clk_src(void)
{
 u32 v;

 v = omap2_cm_read_mod_reg(PLL_MOD, CM_CLKSEL2);
 v &= OMAP24XX_CORE_CLK_SRC_MASK;

 return v;
}
