
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {TYPE_1__* core; } ;
struct TYPE_2__ {unsigned long min_rate; unsigned long max_rate; } ;



void clk_hw_set_rate_range(struct clk_hw *hw, unsigned long min_rate,
      unsigned long max_rate)
{
 hw->core->min_rate = min_rate;
 hw->core->max_rate = max_rate;
}
