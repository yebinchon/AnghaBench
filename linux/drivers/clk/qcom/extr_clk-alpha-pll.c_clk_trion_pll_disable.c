
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {struct regmap* regmap; } ;
struct clk_alpha_pll {TYPE_1__ clkr; } ;


 int PLL_MODE (struct clk_alpha_pll*) ;
 int PLL_OPMODE (struct clk_alpha_pll*) ;
 int PLL_OUTCTRL ;
 int PLL_RESET_N ;
 int PLL_USER_CTL (struct clk_alpha_pll*) ;
 int PLL_VOTE_FSM_ENA ;
 int TRION_PLL_OUT_MASK ;
 int TRION_PLL_STANDBY ;
 int clk_disable_regmap (struct clk_hw*) ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int regmap_write (struct regmap*,int ,int ) ;
 struct clk_alpha_pll* to_clk_alpha_pll (struct clk_hw*) ;

__attribute__((used)) static void clk_trion_pll_disable(struct clk_hw *hw)
{
 struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
 struct regmap *regmap = pll->clkr.regmap;
 u32 val;
 int ret;

 ret = regmap_read(regmap, PLL_MODE(pll), &val);
 if (ret)
  return;


 if (val & PLL_VOTE_FSM_ENA) {
  clk_disable_regmap(hw);
  return;
 }


 ret = regmap_update_bits(regmap, PLL_MODE(pll), PLL_OUTCTRL, 0);
 if (ret)
  return;


 ret = regmap_update_bits(regmap, PLL_USER_CTL(pll),
     TRION_PLL_OUT_MASK, 0);
 if (ret)
  return;


 regmap_write(regmap, PLL_OPMODE(pll), TRION_PLL_STANDBY);
 regmap_update_bits(regmap, PLL_MODE(pll), PLL_RESET_N, PLL_RESET_N);
}
