
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct owl_pll_hw {int bit_idx; int reg; } ;
struct owl_clk_common {int regmap; } ;
struct owl_pll {struct owl_clk_common common; struct owl_pll_hw pll_hw; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 struct owl_pll* hw_to_owl_pll (struct clk_hw*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int owl_pll_is_enabled(struct clk_hw *hw)
{
 struct owl_pll *pll = hw_to_owl_pll(hw);
 struct owl_pll_hw *pll_hw = &pll->pll_hw;
 const struct owl_clk_common *common = &pll->common;
 u32 reg;

 regmap_read(common->regmap, pll_hw->reg, &reg);

 return !!(reg & BIT(pll_hw->bit_idx));
}
