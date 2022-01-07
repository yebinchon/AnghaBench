
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_4__ {int hw; } ;
struct clk_busy_divider {int shift; int reg; TYPE_2__ div; TYPE_1__* div_ops; } ;
struct TYPE_3__ {int (* set_rate ) (int *,unsigned long,unsigned long) ;} ;


 int clk_busy_wait (int ,int ) ;
 int stub1 (int *,unsigned long,unsigned long) ;
 struct clk_busy_divider* to_clk_busy_divider (struct clk_hw*) ;

__attribute__((used)) static int clk_busy_divider_set_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long parent_rate)
{
 struct clk_busy_divider *busy = to_clk_busy_divider(hw);
 int ret;

 ret = busy->div_ops->set_rate(&busy->div.hw, rate, parent_rate);
 if (!ret)
  ret = clk_busy_wait(busy->reg, busy->shift);

 return ret;
}
