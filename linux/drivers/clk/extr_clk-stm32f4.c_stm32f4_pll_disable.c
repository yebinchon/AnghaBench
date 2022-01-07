
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* disable ) (struct clk_hw*) ;} ;


 TYPE_1__ clk_gate_ops ;
 int stub1 (struct clk_hw*) ;

__attribute__((used)) static void stm32f4_pll_disable(struct clk_hw *hw)
{
 clk_gate_ops.disable(hw);
}
