
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* enable ) (struct clk_hw*) ;} ;


 TYPE_1__ clk_gate_ops ;
 int stub1 (struct clk_hw*) ;

__attribute__((used)) static int lpc18xx_cgu_gate_enable(struct clk_hw *hw)
{
 return clk_gate_ops.enable(hw);
}
