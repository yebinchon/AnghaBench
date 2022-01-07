
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


 int BIT (scalar_t__) ;
 int PLL_ALPHA_EN ;
 int PLL_ALPHA_MODE ;
 int PLL_ALPHA_VAL (struct clk_alpha_pll*) ;
 int PLL_HUAYRA_M_MASK ;
 int PLL_HUAYRA_M_SHIFT ;
 scalar_t__ PLL_HUAYRA_M_WIDTH ;
 int PLL_HUAYRA_N_MASK ;
 int PLL_HUAYRA_N_SHIFT ;
 int PLL_L_VAL (struct clk_alpha_pll*) ;
 int PLL_USER_CTL (struct clk_alpha_pll*) ;
 unsigned long alpha_huayra_pll_calc_rate (int,int,int) ;
 int do_div (int,int) ;
 int regmap_read (int ,int ,int*) ;
 struct clk_alpha_pll* to_clk_alpha_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long
alpha_pll_huayra_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
{
 u64 rate = parent_rate, tmp;
 struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
 u32 l, alpha = 0, ctl, alpha_m, alpha_n;

 regmap_read(pll->clkr.regmap, PLL_L_VAL(pll), &l);
 regmap_read(pll->clkr.regmap, PLL_USER_CTL(pll), &ctl);

 if (ctl & PLL_ALPHA_EN) {
  regmap_read(pll->clkr.regmap, PLL_ALPHA_VAL(pll), &alpha);
  if (!(ctl & PLL_ALPHA_MODE))
   return alpha_huayra_pll_calc_rate(rate, l, alpha);

  alpha_m = alpha >> PLL_HUAYRA_M_SHIFT & PLL_HUAYRA_M_MASK;
  alpha_n = alpha >> PLL_HUAYRA_N_SHIFT & PLL_HUAYRA_N_MASK;

  rate *= l;
  tmp = parent_rate;
  if (alpha_m >= BIT(PLL_HUAYRA_M_WIDTH - 1)) {
   alpha_m = BIT(PLL_HUAYRA_M_WIDTH) - alpha_m;
   tmp *= alpha_m;
   do_div(tmp, alpha_n);
   rate -= tmp;
  } else {
   tmp *= alpha_m;
   do_div(tmp, alpha_n);
   rate += tmp;
  }

  return rate;
 }

 return alpha_huayra_pll_calc_rate(rate, l, alpha);
}
