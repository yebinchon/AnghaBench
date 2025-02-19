
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_3__ {struct clk_hw hw; } ;
struct flexgen {TYPE_1__ fgate; } ;
struct TYPE_4__ {int (* is_enabled ) (struct clk_hw*) ;} ;


 int __clk_hw_set_clk (struct clk_hw*,struct clk_hw*) ;
 TYPE_2__ clk_gate_ops ;
 int stub1 (struct clk_hw*) ;
 struct flexgen* to_flexgen (struct clk_hw*) ;

__attribute__((used)) static int flexgen_is_enabled(struct clk_hw *hw)
{
 struct flexgen *flexgen = to_flexgen(hw);
 struct clk_hw *fgate_hw = &flexgen->fgate.hw;

 __clk_hw_set_clk(fgate_hw, hw);

 if (!clk_gate_ops.is_enabled(fgate_hw))
  return 0;

 return 1;
}
