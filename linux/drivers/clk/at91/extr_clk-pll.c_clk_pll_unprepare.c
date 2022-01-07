
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_pll {int id; int regmap; TYPE_1__* layout; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {unsigned int pllr_mask; } ;


 int PLL_REG (int ) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static void clk_pll_unprepare(struct clk_hw *hw)
{
 struct clk_pll *pll = to_clk_pll(hw);
 unsigned int mask = pll->layout->pllr_mask;

 regmap_update_bits(pll->regmap, PLL_REG(pll->id), mask, ~mask);
}
