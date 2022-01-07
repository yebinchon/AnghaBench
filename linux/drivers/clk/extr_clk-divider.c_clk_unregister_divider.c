
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_divider {int dummy; } ;
struct clk {int dummy; } ;


 struct clk_hw* __clk_get_hw (struct clk*) ;
 int clk_unregister (struct clk*) ;
 int kfree (struct clk_divider*) ;
 struct clk_divider* to_clk_divider (struct clk_hw*) ;

void clk_unregister_divider(struct clk *clk)
{
 struct clk_divider *div;
 struct clk_hw *hw;

 hw = __clk_get_hw(clk);
 if (!hw)
  return;

 div = to_clk_divider(hw);

 clk_unregister(clk);
 kfree(div);
}
