
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_ops {int (* enable ) (struct clk_hw*) ;} ;
struct clk_hw {int dummy; } ;
struct clk_composite {struct clk_hw* gate_hw; struct clk_ops* gate_ops; } ;


 int __clk_hw_set_clk (struct clk_hw*,struct clk_hw*) ;
 int stub1 (struct clk_hw*) ;
 struct clk_composite* to_clk_composite (struct clk_hw*) ;

__attribute__((used)) static int clk_composite_enable(struct clk_hw *hw)
{
 struct clk_composite *composite = to_clk_composite(hw);
 const struct clk_ops *gate_ops = composite->gate_ops;
 struct clk_hw *gate_hw = composite->gate_hw;

 __clk_hw_set_clk(gate_hw, hw);

 return gate_ops->enable(gate_hw);
}
