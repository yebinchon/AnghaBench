
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int core; } ;


 int clk_core_is_enabled (int ) ;

bool clk_hw_is_enabled(const struct clk_hw *hw)
{
 return clk_core_is_enabled(hw->core);
}
