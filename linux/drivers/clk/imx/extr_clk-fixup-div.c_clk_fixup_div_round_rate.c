
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_4__ {int hw; } ;
struct clk_fixup_div {TYPE_2__ divider; TYPE_1__* ops; } ;
struct TYPE_3__ {long (* round_rate ) (int *,unsigned long,unsigned long*) ;} ;


 long stub1 (int *,unsigned long,unsigned long*) ;
 struct clk_fixup_div* to_clk_fixup_div (struct clk_hw*) ;

__attribute__((used)) static long clk_fixup_div_round_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long *prate)
{
 struct clk_fixup_div *fixup_div = to_clk_fixup_div(hw);

 return fixup_div->ops->round_rate(&fixup_div->divider.hw, rate, prate);
}
