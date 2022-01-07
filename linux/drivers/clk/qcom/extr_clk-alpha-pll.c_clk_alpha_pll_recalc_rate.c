
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap; } ;
struct clk_alpha_pll {TYPE_1__ clkr; } ;


 int ALPHA_BITWIDTH ;
 int GENMASK (int,int ) ;
 int PLL_ALPHA_EN ;
 int PLL_ALPHA_VAL (struct clk_alpha_pll*) ;
 int PLL_ALPHA_VAL_U (struct clk_alpha_pll*) ;
 int PLL_L_VAL (struct clk_alpha_pll*) ;
 int PLL_USER_CTL (struct clk_alpha_pll*) ;
 unsigned long alpha_pll_calc_rate (int,int,int,int) ;
 int pll_alpha_width (struct clk_alpha_pll*) ;
 int regmap_read (int ,int ,int*) ;
 struct clk_alpha_pll* to_clk_alpha_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long
clk_alpha_pll_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
{
 u32 l, low, high, ctl;
 u64 a = 0, prate = parent_rate;
 struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
 u32 alpha_width = pll_alpha_width(pll);

 regmap_read(pll->clkr.regmap, PLL_L_VAL(pll), &l);

 regmap_read(pll->clkr.regmap, PLL_USER_CTL(pll), &ctl);
 if (ctl & PLL_ALPHA_EN) {
  regmap_read(pll->clkr.regmap, PLL_ALPHA_VAL(pll), &low);
  if (alpha_width > 32) {
   regmap_read(pll->clkr.regmap, PLL_ALPHA_VAL_U(pll),
        &high);
   a = (u64)high << 32 | low;
  } else {
   a = low & GENMASK(alpha_width - 1, 0);
  }

  if (alpha_width > ALPHA_BITWIDTH)
   a >>= alpha_width - ALPHA_BITWIDTH;
 }

 return alpha_pll_calc_rate(prate, l, a, alpha_width);
}
