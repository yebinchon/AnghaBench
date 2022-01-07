
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int __clk_alpha_pll_set_rate (struct clk_hw*,unsigned long,unsigned long,int ) ;
 int clk_alpha_pll_is_enabled ;

__attribute__((used)) static int clk_alpha_pll_set_rate(struct clk_hw *hw, unsigned long rate,
      unsigned long prate)
{
 return __clk_alpha_pll_set_rate(hw, rate, prate,
     clk_alpha_pll_is_enabled);
}
