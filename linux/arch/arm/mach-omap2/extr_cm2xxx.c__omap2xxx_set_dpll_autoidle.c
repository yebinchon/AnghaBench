
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int CM_AUTOIDLE ;
 int OMAP24XX_AUTO_DPLL_MASK ;
 int OMAP24XX_AUTO_DPLL_SHIFT ;
 int PLL_MOD ;
 int omap2_cm_read_mod_reg (int ,int ) ;
 int omap2_cm_write_mod_reg (int,int ,int ) ;

__attribute__((used)) static void _omap2xxx_set_dpll_autoidle(u8 m)
{
 u32 v;

 v = omap2_cm_read_mod_reg(PLL_MOD, CM_AUTOIDLE);
 v &= ~OMAP24XX_AUTO_DPLL_MASK;
 v |= m << OMAP24XX_AUTO_DPLL_SHIFT;
 omap2_cm_write_mod_reg(v, PLL_MOD, CM_AUTOIDLE);
}
