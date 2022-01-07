
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap; } ;
struct clk_alpha_pll {TYPE_1__ clkr; } ;


 int PLL_MODE (struct clk_alpha_pll*) ;
 int regmap_read (int ,int ,int*) ;
 struct clk_alpha_pll* to_clk_alpha_pll (struct clk_hw*) ;

__attribute__((used)) static int pll_is_enabled(struct clk_hw *hw, u32 mask)
{
 int ret;
 struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
 u32 val;

 ret = regmap_read(pll->clkr.regmap, PLL_MODE(pll), &val);
 if (ret)
  return ret;

 return !!(val & mask);
}
