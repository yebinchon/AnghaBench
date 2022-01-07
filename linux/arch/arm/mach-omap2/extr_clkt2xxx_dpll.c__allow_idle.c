
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw_omap {int dpll_data; } ;


 int omap2xxx_cm_set_dpll_auto_low_power_stop () ;

__attribute__((used)) static void _allow_idle(struct clk_hw_omap *clk)
{
 if (!clk || !clk->dpll_data)
  return;

 omap2xxx_cm_set_dpll_auto_low_power_stop();
}
