
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPLL_AUTOIDLE_DISABLE ;
 int _omap2xxx_set_dpll_autoidle (int ) ;

void omap2xxx_cm_set_dpll_auto_low_power_stop(void)
{
 _omap2xxx_set_dpll_autoidle(DPLL_AUTOIDLE_DISABLE);
}
