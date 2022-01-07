
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_gate {int dummy; } ;


 int clk_hw_unregister (struct clk_hw*) ;
 int kfree (struct clk_gate*) ;
 struct clk_gate* to_clk_gate (struct clk_hw*) ;

void clk_hw_unregister_gate(struct clk_hw *hw)
{
 struct clk_gate *gate;

 gate = to_clk_gate(hw);

 clk_hw_unregister(hw);
 kfree(gate);
}
