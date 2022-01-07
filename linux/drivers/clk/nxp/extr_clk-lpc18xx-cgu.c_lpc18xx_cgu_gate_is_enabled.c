
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* is_enabled ) (struct clk_hw*) ;} ;


 TYPE_1__ clk_gate_ops ;
 struct clk_hw* clk_hw_get_parent (struct clk_hw*) ;
 int clk_hw_is_enabled (struct clk_hw const*) ;
 int stub1 (struct clk_hw*) ;

__attribute__((used)) static int lpc18xx_cgu_gate_is_enabled(struct clk_hw *hw)
{
 const struct clk_hw *parent;







 parent = clk_hw_get_parent(hw);
 if (!parent)
  return 0;

 if (!clk_hw_is_enabled(parent))
  return 0;

 return clk_gate_ops.is_enabled(hw);
}
