
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OMAP2XXX_DPLL_AUTOIDLE_LOW_POWER_STOP ;
 int _omap2xxx_set_dpll_autoidle (int ) ;

void omap2xxx_cm_set_dpll_disable_autoidle(void)
{
 _omap2xxx_set_dpll_autoidle(OMAP2XXX_DPLL_AUTOIDLE_LOW_POWER_STOP);
}
