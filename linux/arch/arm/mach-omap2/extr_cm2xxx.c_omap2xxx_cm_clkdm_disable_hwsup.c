
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s16 ;


 int OMAP24XX_CLKSTCTRL_DISABLE_AUTO ;
 int _write_clktrctrl (int ,int ,int ) ;

__attribute__((used)) static void omap2xxx_cm_clkdm_disable_hwsup(s16 module, u32 mask)
{
 _write_clktrctrl(OMAP24XX_CLKSTCTRL_DISABLE_AUTO, module, mask);
}
