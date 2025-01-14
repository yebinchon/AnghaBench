
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_ops {unsigned long (* recalc_rate ) (struct clk_hw*,unsigned long) ;int (* set_rate ) (struct clk_hw*,unsigned long,unsigned long) ;int (* set_parent ) (struct clk_hw*,int ) ;} ;
struct clk_hw {int dummy; } ;
struct clk_composite {struct clk_hw* mux_hw; struct clk_hw* rate_hw; struct clk_ops* mux_ops; struct clk_ops* rate_ops; } ;


 int __clk_hw_set_clk (struct clk_hw*,struct clk_hw*) ;
 unsigned long stub1 (struct clk_hw*,unsigned long) ;
 int stub2 (struct clk_hw*,unsigned long,unsigned long) ;
 int stub3 (struct clk_hw*,int ) ;
 int stub4 (struct clk_hw*,int ) ;
 int stub5 (struct clk_hw*,unsigned long,unsigned long) ;
 struct clk_composite* to_clk_composite (struct clk_hw*) ;

__attribute__((used)) static int clk_composite_set_rate_and_parent(struct clk_hw *hw,
          unsigned long rate,
          unsigned long parent_rate,
          u8 index)
{
 struct clk_composite *composite = to_clk_composite(hw);
 const struct clk_ops *rate_ops = composite->rate_ops;
 const struct clk_ops *mux_ops = composite->mux_ops;
 struct clk_hw *rate_hw = composite->rate_hw;
 struct clk_hw *mux_hw = composite->mux_hw;
 unsigned long temp_rate;

 __clk_hw_set_clk(rate_hw, hw);
 __clk_hw_set_clk(mux_hw, hw);

 temp_rate = rate_ops->recalc_rate(rate_hw, parent_rate);
 if (temp_rate > rate) {
  rate_ops->set_rate(rate_hw, rate, parent_rate);
  mux_ops->set_parent(mux_hw, index);
 } else {
  mux_ops->set_parent(mux_hw, index);
  rate_ops->set_rate(rate_hw, rate, parent_rate);
 }

 return 0;
}
