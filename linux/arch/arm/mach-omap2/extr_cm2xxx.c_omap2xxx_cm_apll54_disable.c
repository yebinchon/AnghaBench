
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OMAP24XX_EN_54M_PLL_SHIFT ;
 int _omap2xxx_apll_disable (int ) ;

void omap2xxx_cm_apll54_disable(void)
{
 _omap2xxx_apll_disable(OMAP24XX_EN_54M_PLL_SHIFT);
}
