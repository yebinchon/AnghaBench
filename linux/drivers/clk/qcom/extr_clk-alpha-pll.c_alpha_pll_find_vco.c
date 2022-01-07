
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_vco {unsigned long min_freq; unsigned long max_freq; } ;
struct clk_alpha_pll {int num_vco; struct pll_vco* vco_table; } ;



__attribute__((used)) static const struct pll_vco *
alpha_pll_find_vco(const struct clk_alpha_pll *pll, unsigned long rate)
{
 const struct pll_vco *v = pll->vco_table;
 const struct pll_vco *end = v + pll->num_vco;

 for (; v < end; v++)
  if (rate >= v->min_freq && rate <= v->max_freq)
   return v;

 return ((void*)0);
}
