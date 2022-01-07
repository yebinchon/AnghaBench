
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
 int regmap_read (int ,int ,int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct clk_pll* to_clk_pll (struct clk_hw*) ;
 int udelay (int) ;
 int wait_for_pll (struct clk_pll*) ;

__attribute__((used)) static int clk_pll_sr2_enable(struct clk_hw *hw)
{
 struct clk_pll *pll = to_clk_pll(hw);
 int ret;
 u32 mode;

 ret = regmap_read(pll->clkr.regmap, pll->mode_reg, &mode);
 if (ret)
  return ret;


 ret = regmap_update_bits(pll->clkr.regmap, pll->mode_reg, PLL_BYPASSNL,
     PLL_BYPASSNL);
 if (ret)
  return ret;





 udelay(10);


 ret = regmap_update_bits(pll->clkr.regmap, pll->mode_reg, PLL_RESET_N,
     PLL_RESET_N);
 if (ret)
  return ret;

 ret = wait_for_pll(pll);
 if (ret)
  return ret;


 return regmap_update_bits(pll->clkr.regmap, pll->mode_reg, PLL_OUTCTRL,
     PLL_OUTCTRL);
}
