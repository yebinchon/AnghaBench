
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_4__ {int hw; } ;
struct clk_div {TYPE_2__ divider; TYPE_1__* ops; } ;
struct TYPE_3__ {long (* round_rate ) (int *,unsigned long,unsigned long*) ;} ;


 long stub1 (int *,unsigned long,unsigned long*) ;
 struct clk_div* to_clk_div (struct clk_hw*) ;

__attribute__((used)) static long clk_div_round_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long *prate)
{
 struct clk_div *div = to_clk_div(hw);

 return div->ops->round_rate(&div->divider.hw, rate, prate);
}
