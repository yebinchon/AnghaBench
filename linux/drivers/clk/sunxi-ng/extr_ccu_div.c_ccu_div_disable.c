
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ccu_div {int enable; int common; } ;


 void ccu_gate_helper_disable (int *,int ) ;
 struct ccu_div* hw_to_ccu_div (struct clk_hw*) ;

__attribute__((used)) static void ccu_div_disable(struct clk_hw *hw)
{
 struct ccu_div *cd = hw_to_ccu_div(hw);

 return ccu_gate_helper_disable(&cd->common, cd->enable);
}
