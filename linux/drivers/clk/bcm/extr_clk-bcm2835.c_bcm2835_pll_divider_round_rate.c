
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_2__ {long (* round_rate ) (struct clk_hw*,unsigned long,unsigned long*) ;} ;


 TYPE_1__ clk_divider_ops ;
 long stub1 (struct clk_hw*,unsigned long,unsigned long*) ;

__attribute__((used)) static long bcm2835_pll_divider_round_rate(struct clk_hw *hw,
        unsigned long rate,
        unsigned long *parent_rate)
{
 return clk_divider_ops.round_rate(hw, rate, parent_rate);
}
