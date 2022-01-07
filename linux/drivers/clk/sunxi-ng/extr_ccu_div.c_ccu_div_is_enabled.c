
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ccu_div {int enable; int common; } ;


 int ccu_gate_helper_is_enabled (int *,int ) ;
 struct ccu_div* hw_to_ccu_div (struct clk_hw*) ;

__attribute__((used)) static int ccu_div_is_enabled(struct clk_hw *hw)
{
 struct ccu_div *cd = hw_to_ccu_div(hw);

 return ccu_gate_helper_is_enabled(&cd->common, cd->enable);
}
