
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_4__ {int hw; } ;
struct clk_busy_divider {TYPE_2__ div; TYPE_1__* div_ops; } ;
struct TYPE_3__ {unsigned long (* recalc_rate ) (int *,unsigned long) ;} ;


 unsigned long stub1 (int *,unsigned long) ;
 struct clk_busy_divider* to_clk_busy_divider (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_busy_divider_recalc_rate(struct clk_hw *hw,
        unsigned long parent_rate)
{
 struct clk_busy_divider *busy = to_clk_busy_divider(hw);

 return busy->div_ops->recalc_rate(&busy->div.hw, parent_rate);
}
