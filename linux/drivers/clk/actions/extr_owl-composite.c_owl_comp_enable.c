
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_clk_common {int dummy; } ;
struct owl_composite {int gate_hw; struct owl_clk_common common; } ;
struct clk_hw {int dummy; } ;


 struct owl_composite* hw_to_owl_comp (struct clk_hw*) ;
 int owl_gate_set (struct owl_clk_common*,int *,int) ;

__attribute__((used)) static int owl_comp_enable(struct clk_hw *hw)
{
 struct owl_composite *comp = hw_to_owl_comp(hw);
 struct owl_clk_common *common = &comp->common;

 owl_gate_set(common, &comp->gate_hw, 1);

 return 0;
}
