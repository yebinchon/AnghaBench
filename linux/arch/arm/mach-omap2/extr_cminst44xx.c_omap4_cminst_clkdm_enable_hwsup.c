
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int OMAP34XX_CLKSTCTRL_ENABLE_AUTO ;
 int _clktrctrl_write (int ,int ,int ,int ) ;

__attribute__((used)) static void omap4_cminst_clkdm_enable_hwsup(u8 part, u16 inst, u16 cdoffs)
{
 _clktrctrl_write(OMAP34XX_CLKSTCTRL_ENABLE_AUTO, part, inst, cdoffs);
}
