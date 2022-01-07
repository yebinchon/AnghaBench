
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct clk_hw_omap {int hw; TYPE_1__* dpll_data; } ;
struct TYPE_2__ {int modes; } ;


 int DPLL_LOW_POWER_BYPASS ;
 int EINVAL ;
 int _omap3_dpll_write_clken (struct clk_hw_omap*,int) ;
 int _omap3_wait_dpll_status (struct clk_hw_omap*,int ) ;
 int clk_hw_get_name (int *) ;
 int omap3_dpll_allow_idle (struct clk_hw_omap*) ;
 scalar_t__ omap3_dpll_autoidle_read (struct clk_hw_omap*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int _omap3_noncore_dpll_bypass(struct clk_hw_omap *clk)
{
 int r;
 u8 ai;

 if (!(clk->dpll_data->modes & (1 << DPLL_LOW_POWER_BYPASS)))
  return -EINVAL;

 pr_debug("clock: configuring DPLL %s for low-power bypass\n",
   clk_hw_get_name(&clk->hw));

 ai = omap3_dpll_autoidle_read(clk);

 _omap3_dpll_write_clken(clk, DPLL_LOW_POWER_BYPASS);

 r = _omap3_wait_dpll_status(clk, 0);

 if (ai)
  omap3_dpll_allow_idle(clk);

 return r;
}
