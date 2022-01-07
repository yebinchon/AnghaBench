
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_2__ {unsigned long (* recalc_rate ) (struct clk_hw*,unsigned long) ;} ;


 unsigned long stub1 (struct clk_hw*,unsigned long) ;
 TYPE_1__ ti_clk_divider_ops ;

__attribute__((used)) static unsigned long ti_composite_recalc_rate(struct clk_hw *hw,
           unsigned long parent_rate)
{
 return ti_clk_divider_ops.recalc_rate(hw, parent_rate);
}
