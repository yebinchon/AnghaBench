
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 struct clk_hw* clk_hw_get_parent (struct clk_hw*) ;
 unsigned long clk_hw_get_rate (struct clk_hw*) ;
 long pll_clk_round_rate (struct clk_hw*,unsigned long,unsigned long*) ;

__attribute__((used)) static long cpu_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 unsigned long *parent_rate)
{




 struct clk_hw *parent_clk = clk_hw_get_parent(hw);
 struct clk_hw *pll_parent_clk = clk_hw_get_parent(parent_clk);
 unsigned long pll_parent_rate = clk_hw_get_rate(pll_parent_clk);
 return pll_clk_round_rate(parent_clk, rate, &pll_parent_rate);
}
