
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dpll_data {unsigned int last_rounded_m; unsigned int last_rounded_n; int last_rounded_rate; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;


 unsigned int ARRAY_SIZE (struct omap3_dpll5_settings const*) ;
 int div_u64 (int,unsigned int) ;
 int omap3_noncore_dpll_program (struct clk_hw_omap*,int ) ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

__attribute__((used)) static bool omap3_dpll5_apply_errata(struct clk_hw *hw,
         unsigned long parent_rate)
{
 struct omap3_dpll5_settings {
  unsigned int rate, m, n;
 };

 static const struct omap3_dpll5_settings precomputed[] = {






  { 12000000, 80, 0 + 1 },
  { 13000000, 443, 5 + 1 },
  { 19200000, 50, 0 + 1 },
  { 26000000, 443, 11 + 1 },
  { 38400000, 25, 0 + 1 }
 };

 const struct omap3_dpll5_settings *d;
 struct clk_hw_omap *clk = to_clk_hw_omap(hw);
 struct dpll_data *dd;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(precomputed); ++i) {
  if (parent_rate == precomputed[i].rate)
   break;
 }

 if (i == ARRAY_SIZE(precomputed))
  return 0;

 d = &precomputed[i];


 dd = clk->dpll_data;
 dd->last_rounded_m = d->m;
 dd->last_rounded_n = d->n;
 dd->last_rounded_rate = div_u64((u64)parent_rate * d->m, d->n);
 omap3_noncore_dpll_program(clk, 0);

 return 1;
}
