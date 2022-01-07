
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u32 ;
struct owl_pll_hw {scalar_t__ width; long bfreq; scalar_t__ table; } ;
struct owl_pll {struct owl_pll_hw pll_hw; } ;
struct clk_pll_table {long rate; } ;
struct clk_hw {int dummy; } ;


 struct clk_pll_table* _get_pll_table (scalar_t__,unsigned long) ;
 struct owl_pll* hw_to_owl_pll (struct clk_hw*) ;
 long owl_pll_calculate_mul (struct owl_pll_hw*,unsigned long) ;

__attribute__((used)) static long owl_pll_round_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long *parent_rate)
{
 struct owl_pll *pll = hw_to_owl_pll(hw);
 struct owl_pll_hw *pll_hw = &pll->pll_hw;
 const struct clk_pll_table *clkt;
 u32 mul;

 if (pll_hw->table) {
  clkt = _get_pll_table(pll_hw->table, rate);
  return clkt->rate;
 }


 if (pll_hw->width == 0)
  return pll_hw->bfreq;

 mul = owl_pll_calculate_mul(pll_hw, rate);

 return pll_hw->bfreq * mul;
}
