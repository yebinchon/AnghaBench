
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap; } ;
struct clk_alpha_pll_postdiv {int width; TYPE_1__ clkr; } ;


 int BIT (int ) ;
 int CLK_SET_RATE_PARENT ;
 long DIV_ROUND_UP_ULL (int ,int) ;
 int PLL_POST_DIV_SHIFT ;
 int PLL_USER_CTL (struct clk_alpha_pll_postdiv*) ;
 int clk_hw_get_flags (struct clk_hw*) ;
 int clk_hw_get_parent (struct clk_hw*) ;
 unsigned long clk_hw_round_rate (int ,int) ;
 int fls (int) ;
 int regmap_read (int ,int ,int*) ;
 struct clk_alpha_pll_postdiv* to_clk_alpha_pll_postdiv (struct clk_hw*) ;

__attribute__((used)) static long
clk_alpha_pll_postdiv_round_ro_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long *prate)
{
 struct clk_alpha_pll_postdiv *pll = to_clk_alpha_pll_postdiv(hw);
 u32 ctl, div;

 regmap_read(pll->clkr.regmap, PLL_USER_CTL(pll), &ctl);

 ctl >>= PLL_POST_DIV_SHIFT;
 ctl &= BIT(pll->width) - 1;
 div = 1 << fls(ctl);

 if (clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT)
  *prate = clk_hw_round_rate(clk_hw_get_parent(hw), div * rate);

 return DIV_ROUND_UP_ULL((u64)*prate, div);
}
