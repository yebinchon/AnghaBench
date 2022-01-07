
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_clk_common {int dummy; } ;
struct owl_gate {int gate_hw; struct owl_clk_common common; } ;
struct clk_hw {int dummy; } ;


 struct owl_gate* hw_to_owl_gate (struct clk_hw*) ;
 int owl_gate_set (struct owl_clk_common*,int *,int) ;

__attribute__((used)) static void owl_gate_disable(struct clk_hw *hw)
{
 struct owl_gate *gate = hw_to_owl_gate(hw);
 struct owl_clk_common *common = &gate->common;

 owl_gate_set(common, &gate->gate_hw, 0);
}
