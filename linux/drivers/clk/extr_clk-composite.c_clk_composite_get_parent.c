
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_ops {int (* get_parent ) (struct clk_hw*) ;} ;
struct clk_hw {int dummy; } ;
struct clk_composite {struct clk_hw* mux_hw; struct clk_ops* mux_ops; } ;


 int __clk_hw_set_clk (struct clk_hw*,struct clk_hw*) ;
 int stub1 (struct clk_hw*) ;
 struct clk_composite* to_clk_composite (struct clk_hw*) ;

__attribute__((used)) static u8 clk_composite_get_parent(struct clk_hw *hw)
{
 struct clk_composite *composite = to_clk_composite(hw);
 const struct clk_ops *mux_ops = composite->mux_ops;
 struct clk_hw *mux_hw = composite->mux_hw;

 __clk_hw_set_clk(mux_hw, hw);

 return mux_ops->get_parent(mux_hw);
}
