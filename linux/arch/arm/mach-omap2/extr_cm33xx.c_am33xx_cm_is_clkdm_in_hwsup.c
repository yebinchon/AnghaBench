
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int AM33XX_CLKTRCTRL_MASK ;
 int AM33XX_CLKTRCTRL_SHIFT ;
 int OMAP34XX_CLKSTCTRL_ENABLE_AUTO ;
 int am33xx_cm_read_reg (int ,int ) ;

__attribute__((used)) static bool am33xx_cm_is_clkdm_in_hwsup(u16 inst, u16 cdoffs)
{
 u32 v;

 v = am33xx_cm_read_reg(inst, cdoffs);
 v &= AM33XX_CLKTRCTRL_MASK;
 v >>= AM33XX_CLKTRCTRL_SHIFT;

 return (v == OMAP34XX_CLKSTCTRL_ENABLE_AUTO) ? 1 : 0;
}
