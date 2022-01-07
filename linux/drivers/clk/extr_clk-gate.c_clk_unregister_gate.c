
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_gate {int dummy; } ;
struct clk {int dummy; } ;


 struct clk_hw* __clk_get_hw (struct clk*) ;
 int clk_unregister (struct clk*) ;
 int kfree (struct clk_gate*) ;
 struct clk_gate* to_clk_gate (struct clk_hw*) ;

void clk_unregister_gate(struct clk *clk)
{
 struct clk_gate *gate;
 struct clk_hw *hw;

 hw = __clk_get_hw(clk);
 if (!hw)
  return;

 gate = to_clk_gate(hw);

 clk_unregister(clk);
 kfree(gate);
}
