
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int PLL_LOCK_DET ;
 int pll_is_enabled (struct clk_hw*,int ) ;

__attribute__((used)) static int clk_alpha_pll_is_enabled(struct clk_hw *hw)
{
 return pll_is_enabled(hw, PLL_LOCK_DET);
}
