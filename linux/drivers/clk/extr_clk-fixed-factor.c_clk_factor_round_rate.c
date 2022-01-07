
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_fixed_factor {unsigned long mult; unsigned long div; } ;


 int CLK_SET_RATE_PARENT ;
 int clk_hw_get_flags (struct clk_hw*) ;
 int clk_hw_get_parent (struct clk_hw*) ;
 unsigned long clk_hw_round_rate (int ,unsigned long) ;
 struct clk_fixed_factor* to_clk_fixed_factor (struct clk_hw*) ;

__attribute__((used)) static long clk_factor_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *prate)
{
 struct clk_fixed_factor *fix = to_clk_fixed_factor(hw);

 if (clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) {
  unsigned long best_parent;

  best_parent = (rate / fix->mult) * fix->div;
  *prate = clk_hw_round_rate(clk_hw_get_parent(hw), best_parent);
 }

 return (*prate / fix->div) * fix->mult;
}
