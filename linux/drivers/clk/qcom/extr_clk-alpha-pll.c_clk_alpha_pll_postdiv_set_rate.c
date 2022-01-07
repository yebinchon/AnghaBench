
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap; } ;
struct clk_alpha_pll_postdiv {TYPE_1__ clkr; } ;


 int DIV_ROUND_UP_ULL (unsigned long,unsigned long) ;
 int PLL_POST_DIV_MASK (struct clk_alpha_pll_postdiv*) ;
 int PLL_POST_DIV_SHIFT ;
 int PLL_USER_CTL (struct clk_alpha_pll_postdiv*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct clk_alpha_pll_postdiv* to_clk_alpha_pll_postdiv (struct clk_hw*) ;

__attribute__((used)) static int clk_alpha_pll_postdiv_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 struct clk_alpha_pll_postdiv *pll = to_clk_alpha_pll_postdiv(hw);
 int div;


 div = DIV_ROUND_UP_ULL(parent_rate, rate) - 1;

 return regmap_update_bits(pll->clkr.regmap, PLL_USER_CTL(pll),
      PLL_POST_DIV_MASK(pll) << PLL_POST_DIV_SHIFT,
      div << PLL_POST_DIV_SHIFT);
}
