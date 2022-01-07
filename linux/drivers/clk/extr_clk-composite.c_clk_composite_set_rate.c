
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_ops {int (* set_rate ) (struct clk_hw*,unsigned long,unsigned long) ;} ;
struct clk_hw {int dummy; } ;
struct clk_composite {struct clk_hw* rate_hw; struct clk_ops* rate_ops; } ;


 int __clk_hw_set_clk (struct clk_hw*,struct clk_hw*) ;
 int stub1 (struct clk_hw*,unsigned long,unsigned long) ;
 struct clk_composite* to_clk_composite (struct clk_hw*) ;

__attribute__((used)) static int clk_composite_set_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long parent_rate)
{
 struct clk_composite *composite = to_clk_composite(hw);
 const struct clk_ops *rate_ops = composite->rate_ops;
 struct clk_hw *rate_hw = composite->rate_hw;

 __clk_hw_set_clk(rate_hw, hw);

 return rate_ops->set_rate(rate_hw, rate, parent_rate);
}
