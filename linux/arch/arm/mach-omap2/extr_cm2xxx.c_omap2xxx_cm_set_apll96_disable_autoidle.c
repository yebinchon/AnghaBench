
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OMAP24XX_AUTO_96M_MASK ;
 int OMAP2XXX_APLL_AUTOIDLE_LOW_POWER_STOP ;
 int _omap2xxx_set_apll_autoidle (int ,int ) ;

void omap2xxx_cm_set_apll96_disable_autoidle(void)
{
 _omap2xxx_set_apll_autoidle(OMAP2XXX_APLL_AUTOIDLE_LOW_POWER_STOP,
        OMAP24XX_AUTO_96M_MASK);
}
