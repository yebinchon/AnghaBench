
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {struct clk_core* core; } ;
struct clk_core {TYPE_1__* ops; scalar_t__ enable_count; } ;
struct TYPE_2__ {int (* disable ) (struct clk_hw*) ;int (* enable ) (struct clk_hw*) ;} ;


 int stub1 (struct clk_hw*) ;
 int stub2 (struct clk_hw*) ;

void clk_gate_restore_context(struct clk_hw *hw)
{
 struct clk_core *core = hw->core;

 if (core->enable_count)
  core->ops->enable(hw);
 else
  core->ops->disable(hw);
}
