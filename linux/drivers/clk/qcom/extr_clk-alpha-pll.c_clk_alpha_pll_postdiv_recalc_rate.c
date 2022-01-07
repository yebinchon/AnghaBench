
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap; } ;
struct clk_alpha_pll_postdiv {TYPE_1__ clkr; } ;


 int PLL_POST_DIV_MASK (struct clk_alpha_pll_postdiv*) ;
 int PLL_POST_DIV_SHIFT ;
 int PLL_USER_CTL (struct clk_alpha_pll_postdiv*) ;
 unsigned long fls (int) ;
 int regmap_read (int ,int ,int*) ;
 struct clk_alpha_pll_postdiv* to_clk_alpha_pll_postdiv (struct clk_hw*) ;

__attribute__((used)) static unsigned long
clk_alpha_pll_postdiv_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
{
 struct clk_alpha_pll_postdiv *pll = to_clk_alpha_pll_postdiv(hw);
 u32 ctl;

 regmap_read(pll->clkr.regmap, PLL_USER_CTL(pll), &ctl);

 ctl >>= PLL_POST_DIV_SHIFT;
 ctl &= PLL_POST_DIV_MASK(pll);

 return parent_rate >> fls(ctl);
}
