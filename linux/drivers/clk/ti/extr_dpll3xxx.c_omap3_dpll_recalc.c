
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw_omap {int dummy; } ;
struct clk_hw {int dummy; } ;


 unsigned long omap2_get_dpll_rate (struct clk_hw_omap*) ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

unsigned long omap3_dpll_recalc(struct clk_hw *hw, unsigned long parent_rate)
{
 struct clk_hw_omap *clk = to_clk_hw_omap(hw);

 return omap2_get_dpll_rate(clk);
}
