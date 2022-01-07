
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_5__ {struct clk_hw hw; } ;
struct TYPE_4__ {struct clk_hw hw; } ;
struct flexgen {TYPE_2__ fgate; TYPE_1__ pgate; } ;
struct TYPE_6__ {int (* enable ) (struct clk_hw*) ;} ;


 int __clk_hw_set_clk (struct clk_hw*,struct clk_hw*) ;
 TYPE_3__ clk_gate_ops ;
 int clk_hw_get_name (struct clk_hw*) ;
 int pr_debug (char*,int ) ;
 int stub1 (struct clk_hw*) ;
 int stub2 (struct clk_hw*) ;
 struct flexgen* to_flexgen (struct clk_hw*) ;

__attribute__((used)) static int flexgen_enable(struct clk_hw *hw)
{
 struct flexgen *flexgen = to_flexgen(hw);
 struct clk_hw *pgate_hw = &flexgen->pgate.hw;
 struct clk_hw *fgate_hw = &flexgen->fgate.hw;

 __clk_hw_set_clk(pgate_hw, hw);
 __clk_hw_set_clk(fgate_hw, hw);

 clk_gate_ops.enable(pgate_hw);

 clk_gate_ops.enable(fgate_hw);

 pr_debug("%s: flexgen output enabled\n", clk_hw_get_name(hw));
 return 0;
}
