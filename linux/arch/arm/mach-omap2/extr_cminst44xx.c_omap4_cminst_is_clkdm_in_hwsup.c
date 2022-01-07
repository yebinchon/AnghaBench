
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;


 int OMAP34XX_CLKSTCTRL_ENABLE_AUTO ;
 int OMAP4430_CLKTRCTRL_MASK ;
 int OMAP4430_CLKTRCTRL_SHIFT ;
 scalar_t__ OMAP4_CM_CLKSTCTRL ;
 int omap4_cminst_read_inst_reg (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool omap4_cminst_is_clkdm_in_hwsup(u8 part, u16 inst, u16 cdoffs)
{
 u32 v;

 v = omap4_cminst_read_inst_reg(part, inst, cdoffs + OMAP4_CM_CLKSTCTRL);
 v &= OMAP4430_CLKTRCTRL_MASK;
 v >>= OMAP4430_CLKTRCTRL_SHIFT;

 return (v == OMAP34XX_CLKSTCTRL_ENABLE_AUTO) ? 1 : 0;
}
