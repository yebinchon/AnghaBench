
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
 int mb () ;
 int regmap_read (int ,int ,int *) ;
 int regmap_write (int ,int ,int ) ;
 struct clk_alpha_pll* to_clk_alpha_pll (struct clk_hw*) ;
 int wait_for_pll_enable_active (struct clk_alpha_pll*) ;

__attribute__((used)) static int clk_alpha_pll_hwfsm_enable(struct clk_hw *hw)
{
 int ret;
 struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
 u32 val;

 ret = regmap_read(pll->clkr.regmap, PLL_MODE(pll), &val);
 if (ret)
  return ret;

 val |= PLL_FSM_ENA;

 if (pll->flags & SUPPORTS_OFFLINE_REQ)
  val &= ~PLL_OFFLINE_REQ;

 ret = regmap_write(pll->clkr.regmap, PLL_MODE(pll), val);
 if (ret)
  return ret;


 mb();

 return wait_for_pll_enable_active(pll);
}
