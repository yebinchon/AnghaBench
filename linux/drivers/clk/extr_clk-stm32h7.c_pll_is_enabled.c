
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_4__ {struct clk_hw hw; } ;
struct TYPE_5__ {TYPE_1__ gate; } ;
struct stm32_pll_obj {TYPE_2__ rgate; } ;
struct TYPE_6__ {int (* is_enabled ) (struct clk_hw*) ;} ;


 int __clk_hw_set_clk (struct clk_hw*,struct clk_hw*) ;
 TYPE_3__ ready_gate_clk_ops ;
 int stub1 (struct clk_hw*) ;
 struct stm32_pll_obj* to_pll (struct clk_hw*) ;

__attribute__((used)) static int pll_is_enabled(struct clk_hw *hw)
{
 struct stm32_pll_obj *clk_elem = to_pll(hw);
 struct clk_hw *_hw = &clk_elem->rgate.gate.hw;

 __clk_hw_set_clk(_hw, hw);

 return ready_gate_clk_ops.is_enabled(_hw);
}
