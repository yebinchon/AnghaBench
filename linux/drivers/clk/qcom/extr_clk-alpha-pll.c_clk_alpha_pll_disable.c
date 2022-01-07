
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap; } ;
struct clk_alpha_pll {TYPE_1__ clkr; } ;


 int PLL_BYPASSNL ;
 int PLL_MODE (struct clk_alpha_pll*) ;
 int PLL_OUTCTRL ;
 int PLL_RESET_N ;
 int PLL_VOTE_FSM_ENA ;
 int clk_disable_regmap (struct clk_hw*) ;
 int mb () ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int ) ;
 struct clk_alpha_pll* to_clk_alpha_pll (struct clk_hw*) ;
 int udelay (int) ;

__attribute__((used)) static void clk_alpha_pll_disable(struct clk_hw *hw)
{
 int ret;
 struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
 u32 val, mask;

 ret = regmap_read(pll->clkr.regmap, PLL_MODE(pll), &val);
 if (ret)
  return;


 if (val & PLL_VOTE_FSM_ENA) {
  clk_disable_regmap(hw);
  return;
 }

 mask = PLL_OUTCTRL;
 regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll), mask, 0);


 mb();
 udelay(1);

 mask = PLL_RESET_N | PLL_BYPASSNL;
 regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll), mask, 0);
}
