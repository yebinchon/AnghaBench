
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int core; } ;


 unsigned long clk_core_get_rate_nolock (int ) ;

unsigned long clk_hw_get_rate(const struct clk_hw *hw)
{
 return clk_core_get_rate_nolock(hw->core);
}
