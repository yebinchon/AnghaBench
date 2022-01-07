
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s16 ;


 int OMAP24XX_CLKSTCTRL_ENABLE_AUTO ;
 int OMAP2_CM_CLKSTCTRL ;
 int __ffs (int) ;
 int omap2_cm_read_mod_reg (int ,int ) ;

__attribute__((used)) static bool omap2xxx_cm_is_clkdm_in_hwsup(s16 module, u32 mask)
{
 u32 v;

 v = omap2_cm_read_mod_reg(module, OMAP2_CM_CLKSTCTRL);
 v &= mask;
 v >>= __ffs(mask);

 return (v == OMAP24XX_CLKSTCTRL_ENABLE_AUTO) ? 1 : 0;
}
