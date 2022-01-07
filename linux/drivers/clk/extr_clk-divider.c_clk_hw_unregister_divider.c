
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_divider {int dummy; } ;


 int clk_hw_unregister (struct clk_hw*) ;
 int kfree (struct clk_divider*) ;
 struct clk_divider* to_clk_divider (struct clk_hw*) ;

void clk_hw_unregister_divider(struct clk_hw *hw)
{
 struct clk_divider *div;

 div = to_clk_divider(hw);

 clk_hw_unregister(hw);
 kfree(div);
}
