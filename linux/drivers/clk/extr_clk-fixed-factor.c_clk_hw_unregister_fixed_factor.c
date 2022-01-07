
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_fixed_factor {int dummy; } ;


 int clk_hw_unregister (struct clk_hw*) ;
 int kfree (struct clk_fixed_factor*) ;
 struct clk_fixed_factor* to_clk_fixed_factor (struct clk_hw*) ;

void clk_hw_unregister_fixed_factor(struct clk_hw *hw)
{
 struct clk_fixed_factor *fix;

 fix = to_clk_fixed_factor(hw);

 clk_hw_unregister(hw);
 kfree(fix);
}
