
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ccu_mult {int enable; int common; } ;


 int ccu_gate_helper_enable (int *,int ) ;
 struct ccu_mult* hw_to_ccu_mult (struct clk_hw*) ;

__attribute__((used)) static int ccu_mult_enable(struct clk_hw *hw)
{
 struct ccu_mult *cm = hw_to_ccu_mult(hw);

 return ccu_gate_helper_enable(&cm->common, cm->enable);
}
