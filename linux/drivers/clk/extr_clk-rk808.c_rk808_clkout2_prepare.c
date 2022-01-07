
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int rk808_clkout2_enable (struct clk_hw*,int) ;

__attribute__((used)) static int rk808_clkout2_prepare(struct clk_hw *hw)
{
 return rk808_clkout2_enable(hw, 1);
}
