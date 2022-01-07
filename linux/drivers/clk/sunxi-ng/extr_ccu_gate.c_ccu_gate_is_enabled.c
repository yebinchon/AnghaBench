
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ccu_gate {int enable; int common; } ;


 int ccu_gate_helper_is_enabled (int *,int ) ;
 struct ccu_gate* hw_to_ccu_gate (struct clk_hw*) ;

__attribute__((used)) static int ccu_gate_is_enabled(struct clk_hw *hw)
{
 struct ccu_gate *cg = hw_to_ccu_gate(hw);

 return ccu_gate_helper_is_enabled(&cg->common, cg->enable);
}
