
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_gate {int dummy; } ;
struct clk_hw {int dummy; } ;


 int clk_sc_gate_toggle (struct sprd_gate*,int) ;
 struct sprd_gate* hw_to_sprd_gate (struct clk_hw*) ;

__attribute__((used)) static int sprd_sc_gate_enable(struct clk_hw *hw)
{
 struct sprd_gate *sg = hw_to_sprd_gate(hw);

 clk_sc_gate_toggle(sg, 1);

 return 0;
}
