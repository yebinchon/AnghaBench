
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_alpha_pll_postdiv {int width; int post_div_table; } ;


 int CLK_DIVIDER_ROUND_CLOSEST ;
 long divider_round_rate (struct clk_hw*,unsigned long,unsigned long*,int ,int ,int ) ;
 struct clk_alpha_pll_postdiv* to_clk_alpha_pll_postdiv (struct clk_hw*) ;

__attribute__((used)) static long
clk_trion_pll_postdiv_round_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long *prate)
{
 struct clk_alpha_pll_postdiv *pll = to_clk_alpha_pll_postdiv(hw);

 return divider_round_rate(hw, rate, prate, pll->post_div_table,
      pll->width, CLK_DIVIDER_ROUND_CLOSEST);
}
