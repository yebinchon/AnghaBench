
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int clk; } ;


 int clk_unregister (int ) ;

void clk_hw_unregister(struct clk_hw *hw)
{
 clk_unregister(hw->clk);
}
