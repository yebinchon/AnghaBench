
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_alpha_pll {int num_vco; TYPE_1__* vco_table; } ;
struct TYPE_2__ {unsigned long min_freq; unsigned long max_freq; } ;


 scalar_t__ alpha_pll_find_vco (struct clk_alpha_pll*,unsigned long) ;
 unsigned long alpha_pll_round_rate (unsigned long,unsigned long,int *,int *,int ) ;
 long clamp (unsigned long,unsigned long,unsigned long) ;
 int pll_alpha_width (struct clk_alpha_pll*) ;
 struct clk_alpha_pll* to_clk_alpha_pll (struct clk_hw*) ;

__attribute__((used)) static long clk_alpha_pll_round_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long *prate)
{
 struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
 u32 l, alpha_width = pll_alpha_width(pll);
 u64 a;
 unsigned long min_freq, max_freq;

 rate = alpha_pll_round_rate(rate, *prate, &l, &a, alpha_width);
 if (!pll->vco_table || alpha_pll_find_vco(pll, rate))
  return rate;

 min_freq = pll->vco_table[0].min_freq;
 max_freq = pll->vco_table[pll->num_vco - 1].max_freq;

 return clamp(rate, min_freq, max_freq);
}
