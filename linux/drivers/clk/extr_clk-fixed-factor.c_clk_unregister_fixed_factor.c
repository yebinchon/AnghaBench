
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;


 struct clk_hw* __clk_get_hw (struct clk*) ;
 int clk_unregister (struct clk*) ;
 int kfree (int ) ;
 int to_clk_fixed_factor (struct clk_hw*) ;

void clk_unregister_fixed_factor(struct clk *clk)
{
 struct clk_hw *hw;

 hw = __clk_get_hw(clk);
 if (!hw)
  return;

 clk_unregister(clk);
 kfree(to_clk_fixed_factor(hw));
}
