
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct owl_pll_hw {unsigned long shift; scalar_t__ width; unsigned long bfreq; int reg; scalar_t__ table; } ;
struct owl_clk_common {int regmap; } ;
struct owl_pll {struct owl_clk_common common; struct owl_pll_hw pll_hw; } ;
struct clk_hw {int dummy; } ;


 unsigned long _get_table_rate (scalar_t__,unsigned long) ;
 struct owl_pll* hw_to_owl_pll (struct clk_hw*) ;
 unsigned long mul_mask (struct owl_pll_hw*) ;
 int regmap_read (int ,int ,unsigned long*) ;

__attribute__((used)) static unsigned long owl_pll_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct owl_pll *pll = hw_to_owl_pll(hw);
 struct owl_pll_hw *pll_hw = &pll->pll_hw;
 const struct owl_clk_common *common = &pll->common;
 u32 val;

 if (pll_hw->table) {
  regmap_read(common->regmap, pll_hw->reg, &val);

  val = val >> pll_hw->shift;
  val &= mul_mask(pll_hw);

  return _get_table_rate(pll_hw->table, val);
 }


 if (pll_hw->width == 0)
  return pll_hw->bfreq;

 regmap_read(common->regmap, pll_hw->reg, &val);

 val = val >> pll_hw->shift;
 val &= mul_mask(pll_hw);

 return pll_hw->bfreq * val;
}
