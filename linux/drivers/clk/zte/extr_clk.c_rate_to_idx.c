
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_pll_config {unsigned long rate; } ;
struct clk_zx_pll {int count; struct zx_pll_config* lookup_table; } ;



__attribute__((used)) static int rate_to_idx(struct clk_zx_pll *zx_pll, unsigned long rate)
{
 const struct zx_pll_config *config = zx_pll->lookup_table;
 int i;

 for (i = 0; i < zx_pll->count; i++) {
  if (config[i].rate > rate)
   return i > 0 ? i - 1 : 0;

  if (config[i].rate == rate)
   return i;
 }

 return i - 1;
}
