
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int hi655x_clk_enable (struct clk_hw*,int) ;

__attribute__((used)) static int hi655x_clk_prepare(struct clk_hw *hw)
{
 return hi655x_clk_enable(hw, 1);
}
