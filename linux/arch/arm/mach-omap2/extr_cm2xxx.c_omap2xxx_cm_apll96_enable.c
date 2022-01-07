
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OMAP24XX_EN_96M_PLL_SHIFT ;
 int OMAP24XX_ST_96M_APLL_SHIFT ;
 int _omap2xxx_apll_enable (int ,int ) ;

int omap2xxx_cm_apll96_enable(void)
{
 return _omap2xxx_apll_enable(OMAP24XX_EN_96M_PLL_SHIFT,
         OMAP24XX_ST_96M_APLL_SHIFT);
}
