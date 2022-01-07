
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int OMAP34XX_CLKSTCTRL_DISABLE_AUTO ;
 int _clktrctrl_write (int ,int ,int ) ;

__attribute__((used)) static void am33xx_cm_clkdm_disable_hwsup(u16 inst, u16 cdoffs)
{
 _clktrctrl_write(OMAP34XX_CLKSTCTRL_DISABLE_AUTO, inst, cdoffs);
}
