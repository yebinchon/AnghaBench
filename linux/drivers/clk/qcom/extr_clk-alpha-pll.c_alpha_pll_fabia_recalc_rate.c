
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap; } ;
struct clk_alpha_pll {TYPE_1__ clkr; } ;


 int PLL_FRAC (struct clk_alpha_pll*) ;
 int PLL_L_VAL (struct clk_alpha_pll*) ;
 unsigned long alpha_pll_calc_rate (unsigned long,int ,int ,int ) ;
 int pll_alpha_width (struct clk_alpha_pll*) ;
 int regmap_read (int ,int ,int *) ;
 struct clk_alpha_pll* to_clk_alpha_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long alpha_pll_fabia_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
 u32 l, frac, alpha_width = pll_alpha_width(pll);

 regmap_read(pll->clkr.regmap, PLL_L_VAL(pll), &l);
 regmap_read(pll->clkr.regmap, PLL_FRAC(pll), &frac);

 return alpha_pll_calc_rate(parent_rate, l, frac, alpha_width);
}
