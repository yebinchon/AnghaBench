
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int core; } ;


 int clk_core_is_prepared (int ) ;

bool clk_hw_is_prepared(const struct clk_hw *hw)
{
 return clk_core_is_prepared(hw->core);
}
