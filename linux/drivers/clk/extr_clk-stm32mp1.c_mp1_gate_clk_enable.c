
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* enable ) (struct clk_hw*) ;int (* is_enabled ) (struct clk_hw*) ;} ;


 TYPE_1__ clk_gate_ops ;
 int stub1 (struct clk_hw*) ;
 int stub2 (struct clk_hw*) ;

__attribute__((used)) static int mp1_gate_clk_enable(struct clk_hw *hw)
{
 if (!clk_gate_ops.is_enabled(hw))
  clk_gate_ops.enable(hw);

 return 0;
}
