
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


 int FABIA_OPMODE_STANDBY ;
 int FABIA_PLL_OUT_MASK ;
 int PLL_FSM_ENA ;
 int PLL_MODE (struct clk_alpha_pll*) ;
 int PLL_OPMODE (struct clk_alpha_pll*) ;
 int PLL_OUTCTRL ;
 int PLL_USER_CTL (struct clk_alpha_pll*) ;
 int clk_disable_regmap (struct clk_hw*) ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int regmap_write (struct regmap*,int ,int ) ;
 struct clk_alpha_pll* to_clk_alpha_pll (struct clk_hw*) ;

__attribute__((used)) static void alpha_pll_fabia_disable(struct clk_hw *hw)
{
 int ret;
 struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
 u32 val;
 struct regmap *regmap = pll->clkr.regmap;

 ret = regmap_read(regmap, PLL_MODE(pll), &val);
 if (ret)
  return;


 if (val & PLL_FSM_ENA) {
  clk_disable_regmap(hw);
  return;
 }

 ret = regmap_update_bits(regmap, PLL_MODE(pll), PLL_OUTCTRL, 0);
 if (ret)
  return;


 ret = regmap_update_bits(regmap, PLL_USER_CTL(pll), FABIA_PLL_OUT_MASK,
     0);
 if (ret)
  return;


 regmap_write(regmap, PLL_OPMODE(pll), FABIA_OPMODE_STANDBY);
}
