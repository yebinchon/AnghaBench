
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pistachio_clk_pll {unsigned int nr_rates; TYPE_1__* rates; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {unsigned long fref; unsigned long fout; } ;


 struct pistachio_clk_pll* to_pistachio_pll (struct clk_hw*) ;

__attribute__((used)) static long pll_round_rate(struct clk_hw *hw, unsigned long rate,
      unsigned long *parent_rate)
{
 struct pistachio_clk_pll *pll = to_pistachio_pll(hw);
 unsigned int i;

 for (i = 0; i < pll->nr_rates; i++) {
  if (i > 0 && pll->rates[i].fref == *parent_rate &&
      pll->rates[i].fout <= rate)
   return pll->rates[i - 1].fout;
 }

 return pll->rates[0].fout;
}
