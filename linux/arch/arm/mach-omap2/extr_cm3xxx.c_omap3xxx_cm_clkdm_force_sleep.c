
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s16 ;


 int OMAP34XX_CLKSTCTRL_FORCE_SLEEP ;
 int _write_clktrctrl (int ,int ,int ) ;

__attribute__((used)) static void omap3xxx_cm_clkdm_force_sleep(s16 module, u32 mask)
{
 _write_clktrctrl(OMAP34XX_CLKSTCTRL_FORCE_SLEEP, module, mask);
}
