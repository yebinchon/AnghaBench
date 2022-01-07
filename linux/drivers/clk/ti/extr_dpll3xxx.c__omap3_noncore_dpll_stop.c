
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct clk_hw_omap {int hw; TYPE_1__* dpll_data; } ;
struct TYPE_2__ {int modes; } ;


 int DPLL_LOW_POWER_STOP ;
 int EINVAL ;
 int _omap3_dpll_write_clken (struct clk_hw_omap*,int) ;
 int clk_hw_get_name (int *) ;
 int omap3_dpll_allow_idle (struct clk_hw_omap*) ;
 scalar_t__ omap3_dpll_autoidle_read (struct clk_hw_omap*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int _omap3_noncore_dpll_stop(struct clk_hw_omap *clk)
{
 u8 ai;

 if (!(clk->dpll_data->modes & (1 << DPLL_LOW_POWER_STOP)))
  return -EINVAL;

 pr_debug("clock: stopping DPLL %s\n", clk_hw_get_name(&clk->hw));

 ai = omap3_dpll_autoidle_read(clk);

 _omap3_dpll_write_clken(clk, DPLL_LOW_POWER_STOP);

 if (ai)
  omap3_dpll_allow_idle(clk);

 return 0;
}
