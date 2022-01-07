
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw_omap {unsigned long fixed_rate; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ omap2_apll_is_enabled (struct clk_hw*) ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

__attribute__((used)) static unsigned long omap2_apll_recalc(struct clk_hw *hw,
           unsigned long parent_rate)
{
 struct clk_hw_omap *clk = to_clk_hw_omap(hw);

 if (omap2_apll_is_enabled(hw))
  return clk->fixed_rate;

 return 0;
}
