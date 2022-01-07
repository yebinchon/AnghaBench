
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap; } ;
struct clk_alpha_pll {int flags; TYPE_1__ clkr; } ;


 int PLL_FSM_ENA ;
 int PLL_MODE (struct clk_alpha_pll*) ;
 int PLL_OFFLINE_REQ ;
 int SUPPORTS_OFFLINE_REQ ;
 int regmap_read (int ,int ,int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct clk_alpha_pll* to_clk_alpha_pll (struct clk_hw*) ;
 int wait_for_pll_disable (struct clk_alpha_pll*) ;
 int wait_for_pll_offline (struct clk_alpha_pll*) ;

__attribute__((used)) static void clk_alpha_pll_hwfsm_disable(struct clk_hw *hw)
{
 int ret;
 struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
 u32 val;

 ret = regmap_read(pll->clkr.regmap, PLL_MODE(pll), &val);
 if (ret)
  return;

 if (pll->flags & SUPPORTS_OFFLINE_REQ) {
  ret = regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll),
      PLL_OFFLINE_REQ, PLL_OFFLINE_REQ);
  if (ret)
   return;

  ret = wait_for_pll_offline(pll);
  if (ret)
   return;
 }


 ret = regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll),
     PLL_FSM_ENA, 0);
 if (ret)
  return;

 wait_for_pll_disable(pll);
}
