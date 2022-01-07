
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ccu_gate {int enable; int common; } ;


 void ccu_gate_helper_disable (int *,int ) ;
 struct ccu_gate* hw_to_ccu_gate (struct clk_hw*) ;

__attribute__((used)) static void ccu_gate_disable(struct clk_hw *hw)
{
 struct ccu_gate *cg = hw_to_ccu_gate(hw);

 return ccu_gate_helper_disable(&cg->common, cg->enable);
}
