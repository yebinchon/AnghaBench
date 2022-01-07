
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int regmap; } ;
struct clk_pll {int mode_reg; TYPE_1__ clkr; } ;
struct clk_hw {int dummy; } ;


 int PLL_BYPASSNL ;
 int PLL_OUTCTRL ;
 int PLL_RESET_N ;
 int PLL_VOTE_FSM_ENA ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int ) ;
 struct clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static void clk_pll_disable(struct clk_hw *hw)
{
 struct clk_pll *pll = to_clk_pll(hw);
 u32 mask;
 u32 val;

 regmap_read(pll->clkr.regmap, pll->mode_reg, &val);

 if (val & PLL_VOTE_FSM_ENA)
  return;
 mask = PLL_OUTCTRL | PLL_RESET_N | PLL_BYPASSNL;
 regmap_update_bits(pll->clkr.regmap, pll->mode_reg, mask, 0);
}
