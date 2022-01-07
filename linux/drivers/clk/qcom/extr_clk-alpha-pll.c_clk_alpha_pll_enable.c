
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
 int clk_enable_regmap (struct clk_hw*) ;
 int mb () ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct clk_alpha_pll* to_clk_alpha_pll (struct clk_hw*) ;
 int udelay (int) ;
 int wait_for_pll_enable_active (struct clk_alpha_pll*) ;
 int wait_for_pll_enable_lock (struct clk_alpha_pll*) ;

__attribute__((used)) static int clk_alpha_pll_enable(struct clk_hw *hw)
{
 int ret;
 struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
 u32 val, mask;

 mask = PLL_OUTCTRL | PLL_RESET_N | PLL_BYPASSNL;
 ret = regmap_read(pll->clkr.regmap, PLL_MODE(pll), &val);
 if (ret)
  return ret;


 if (val & PLL_VOTE_FSM_ENA) {
  ret = clk_enable_regmap(hw);
  if (ret)
   return ret;
  return wait_for_pll_enable_active(pll);
 }


 if ((val & mask) == mask)
  return 0;

 ret = regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll),
     PLL_BYPASSNL, PLL_BYPASSNL);
 if (ret)
  return ret;





 mb();
 udelay(5);

 ret = regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll),
     PLL_RESET_N, PLL_RESET_N);
 if (ret)
  return ret;

 ret = wait_for_pll_enable_lock(pll);
 if (ret)
  return ret;

 ret = regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll),
     PLL_OUTCTRL, PLL_OUTCTRL);


 mb();
 return ret;
}
