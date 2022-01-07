
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
 int regmap_update_bits (int ,int ,int,int) ;
 struct clk_pll* to_clk_pll (struct clk_hw*) ;
 int udelay (int) ;

__attribute__((used)) static int clk_pll_enable(struct clk_hw *hw)
{
 struct clk_pll *pll = to_clk_pll(hw);
 int ret;
 u32 mask, val;

 mask = PLL_OUTCTRL | PLL_RESET_N | PLL_BYPASSNL;
 ret = regmap_read(pll->clkr.regmap, pll->mode_reg, &val);
 if (ret)
  return ret;


 if ((val & mask) == mask || val & PLL_VOTE_FSM_ENA)
  return 0;


 ret = regmap_update_bits(pll->clkr.regmap, pll->mode_reg, PLL_BYPASSNL,
     PLL_BYPASSNL);
 if (ret)
  return ret;





 udelay(10);


 ret = regmap_update_bits(pll->clkr.regmap, pll->mode_reg, PLL_RESET_N,
     PLL_RESET_N);
 if (ret)
  return ret;


 udelay(50);


 return regmap_update_bits(pll->clkr.regmap, pll->mode_reg, PLL_OUTCTRL,
     PLL_OUTCTRL);
}
