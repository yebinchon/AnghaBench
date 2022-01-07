
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap; } ;
struct clk_alpha_pll {TYPE_1__ clkr; } ;


 int EBUSY ;
 int PLL_ALPHA_EN ;
 int PLL_ALPHA_MODE ;
 int PLL_ALPHA_VAL (struct clk_alpha_pll*) ;
 int PLL_L_VAL (struct clk_alpha_pll*) ;
 int PLL_USER_CTL (struct clk_alpha_pll*) ;
 unsigned long alpha_huayra_pll_round_rate (unsigned long,unsigned long,int*,int*) ;
 scalar_t__ clk_alpha_pll_is_enabled (struct clk_hw*) ;
 int clk_hw_get_name (struct clk_hw*) ;
 int mb () ;
 int pr_err (char*,int ) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 struct clk_alpha_pll* to_clk_alpha_pll (struct clk_hw*) ;
 int wait_for_pll_enable_lock (struct clk_alpha_pll*) ;

__attribute__((used)) static int alpha_pll_huayra_set_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long prate)
{
 struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
 u32 l, a, ctl, cur_alpha = 0;

 rate = alpha_huayra_pll_round_rate(rate, prate, &l, &a);

 regmap_read(pll->clkr.regmap, PLL_USER_CTL(pll), &ctl);

 if (ctl & PLL_ALPHA_EN)
  regmap_read(pll->clkr.regmap, PLL_ALPHA_VAL(pll), &cur_alpha);





 if (clk_alpha_pll_is_enabled(hw)) {
  if (cur_alpha != a) {
   pr_err("clock needs to be gated %s\n",
          clk_hw_get_name(hw));
   return -EBUSY;
  }

  regmap_write(pll->clkr.regmap, PLL_L_VAL(pll), l);

  mb();
  return wait_for_pll_enable_lock(pll);
 }

 regmap_write(pll->clkr.regmap, PLL_L_VAL(pll), l);
 regmap_write(pll->clkr.regmap, PLL_ALPHA_VAL(pll), a);

 if (a == 0)
  regmap_update_bits(pll->clkr.regmap, PLL_USER_CTL(pll),
       PLL_ALPHA_EN, 0x0);
 else
  regmap_update_bits(pll->clkr.regmap, PLL_USER_CTL(pll),
       PLL_ALPHA_EN | PLL_ALPHA_MODE, PLL_ALPHA_EN);

 return 0;
}
