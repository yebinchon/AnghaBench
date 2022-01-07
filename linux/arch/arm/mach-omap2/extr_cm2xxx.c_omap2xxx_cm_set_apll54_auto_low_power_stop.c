
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OMAP24XX_AUTO_54M_MASK ;
 int OMAP2XXX_APLL_AUTOIDLE_DISABLE ;
 int _omap2xxx_set_apll_autoidle (int ,int ) ;

void omap2xxx_cm_set_apll54_auto_low_power_stop(void)
{
 _omap2xxx_set_apll_autoidle(OMAP2XXX_APLL_AUTOIDLE_DISABLE,
        OMAP24XX_AUTO_54M_MASK);
}
