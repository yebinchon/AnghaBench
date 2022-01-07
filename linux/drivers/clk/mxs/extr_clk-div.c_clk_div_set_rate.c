
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_4__ {int hw; } ;
struct clk_div {int busy; int reg; TYPE_2__ divider; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_rate ) (int *,unsigned long,unsigned long) ;} ;


 int mxs_clk_wait (int ,int ) ;
 int stub1 (int *,unsigned long,unsigned long) ;
 struct clk_div* to_clk_div (struct clk_hw*) ;

__attribute__((used)) static int clk_div_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 struct clk_div *div = to_clk_div(hw);
 int ret;

 ret = div->ops->set_rate(&div->divider.hw, rate, parent_rate);
 if (!ret)
  ret = mxs_clk_wait(div->reg, div->busy);

 return ret;
}
