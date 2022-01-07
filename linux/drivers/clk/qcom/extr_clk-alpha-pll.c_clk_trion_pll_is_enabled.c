
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap; } ;
struct clk_alpha_pll {TYPE_1__ clkr; } ;


 struct clk_alpha_pll* to_clk_alpha_pll (struct clk_hw*) ;
 int trion_pll_is_enabled (struct clk_alpha_pll*,int ) ;

__attribute__((used)) static int clk_trion_pll_is_enabled(struct clk_hw *hw)
{
 struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);

 return trion_pll_is_enabled(pll, pll->clkr.regmap);
}
