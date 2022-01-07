
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
 int PLL_USER_CTL (struct clk_alpha_pll*) ;
 int PLL_VOTE_FSM_ENA ;
 int TRION_PLL_OUT_MASK ;
 int TRION_PLL_RUN ;
 int clk_enable_regmap (struct clk_hw*) ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int regmap_write (struct regmap*,int ,int ) ;
 struct clk_alpha_pll* to_clk_alpha_pll (struct clk_hw*) ;
 int wait_for_pll_enable_active (struct clk_alpha_pll*) ;
 int wait_for_pll_enable_lock (struct clk_alpha_pll*) ;

__attribute__((used)) static int clk_trion_pll_enable(struct clk_hw *hw)
{
 struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
 struct regmap *regmap = pll->clkr.regmap;
 u32 val;
 int ret;

 ret = regmap_read(regmap, PLL_MODE(pll), &val);
 if (ret)
  return ret;


 if (val & PLL_VOTE_FSM_ENA) {
  ret = clk_enable_regmap(hw);
  if (ret)
   return ret;
  return wait_for_pll_enable_active(pll);
 }


 regmap_write(regmap, PLL_OPMODE(pll), TRION_PLL_RUN);

 ret = wait_for_pll_enable_lock(pll);
 if (ret)
  return ret;


 ret = regmap_update_bits(regmap, PLL_USER_CTL(pll),
     TRION_PLL_OUT_MASK, TRION_PLL_OUT_MASK);
 if (ret)
  return ret;


 return regmap_update_bits(regmap, PLL_MODE(pll),
     PLL_OUTCTRL, PLL_OUTCTRL);
}
