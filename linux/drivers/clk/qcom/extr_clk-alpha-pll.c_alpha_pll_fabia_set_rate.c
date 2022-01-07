
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


 int EINVAL ;
 unsigned long FABIA_PLL_RATE_MARGIN ;
 int PLL_FRAC (struct clk_alpha_pll*) ;
 int PLL_L_VAL (struct clk_alpha_pll*) ;
 int PLL_MODE (struct clk_alpha_pll*) ;
 int __clk_alpha_pll_update_latch (struct clk_alpha_pll*) ;
 unsigned long alpha_pll_round_rate (unsigned long,unsigned long,int *,int *,int ) ;
 int pll_alpha_width (struct clk_alpha_pll*) ;
 int pr_err (char*) ;
 int regmap_read (int ,int ,int *) ;
 int regmap_write (int ,int ,int ) ;
 struct clk_alpha_pll* to_clk_alpha_pll (struct clk_hw*) ;

__attribute__((used)) static int alpha_pll_fabia_set_rate(struct clk_hw *hw, unsigned long rate,
      unsigned long prate)
{
 struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
 u32 val, l, alpha_width = pll_alpha_width(pll);
 u64 a;
 unsigned long rrate;
 int ret = 0;

 ret = regmap_read(pll->clkr.regmap, PLL_MODE(pll), &val);
 if (ret)
  return ret;

 rrate = alpha_pll_round_rate(rate, prate, &l, &a, alpha_width);





 if (rrate > (rate + FABIA_PLL_RATE_MARGIN) || rrate < rate) {
  pr_err("Call set rate on the PLL with rounded rates!\n");
  return -EINVAL;
 }

 regmap_write(pll->clkr.regmap, PLL_L_VAL(pll), l);
 regmap_write(pll->clkr.regmap, PLL_FRAC(pll), a);

 return __clk_alpha_pll_update_latch(pll);
}
