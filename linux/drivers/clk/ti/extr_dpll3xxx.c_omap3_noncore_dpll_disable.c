
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw_omap {scalar_t__ clkdm; } ;
struct clk_hw {int clk; } ;
struct TYPE_2__ {int (* clkdm_clk_disable ) (scalar_t__,int ) ;} ;


 int _omap3_noncore_dpll_stop (struct clk_hw_omap*) ;
 int stub1 (scalar_t__,int ) ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

void omap3_noncore_dpll_disable(struct clk_hw *hw)
{
 struct clk_hw_omap *clk = to_clk_hw_omap(hw);

 _omap3_noncore_dpll_stop(clk);
 if (clk->clkdm)
  ti_clk_ll_ops->clkdm_clk_disable(clk->clkdm, hw->clk);
}
