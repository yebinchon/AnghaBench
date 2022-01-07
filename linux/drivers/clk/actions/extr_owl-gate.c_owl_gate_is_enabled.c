
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_clk_common {int dummy; } ;
struct owl_gate {int gate_hw; struct owl_clk_common common; } ;
struct clk_hw {int dummy; } ;


 struct owl_gate* hw_to_owl_gate (struct clk_hw*) ;
 int owl_gate_clk_is_enabled (struct owl_clk_common*,int *) ;

__attribute__((used)) static int owl_gate_is_enabled(struct clk_hw *hw)
{
 struct owl_gate *gate = hw_to_owl_gate(hw);
 struct owl_clk_common *common = &gate->common;

 return owl_gate_clk_is_enabled(common, &gate->gate_hw);
}
