
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_pll_rate_table {unsigned long rate; } ;
struct samsung_clk_pll {int rate_count; struct samsung_pll_rate_table* rate_table; } ;
struct clk_hw {int dummy; } ;


 struct samsung_clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static long samsung_pll_round_rate(struct clk_hw *hw,
   unsigned long drate, unsigned long *prate)
{
 struct samsung_clk_pll *pll = to_clk_pll(hw);
 const struct samsung_pll_rate_table *rate_table = pll->rate_table;
 int i;


 for (i = 0; i < pll->rate_count; i++) {
  if (drate >= rate_table[i].rate)
   return rate_table[i].rate;
 }


 return rate_table[i - 1].rate;
}
