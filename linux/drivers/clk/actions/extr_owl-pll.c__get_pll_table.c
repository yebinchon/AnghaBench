
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pll_table {long rate; } ;



__attribute__((used)) static const struct clk_pll_table *_get_pll_table(
  const struct clk_pll_table *table, unsigned long rate)
{
 const struct clk_pll_table *clkt;

 for (clkt = table; clkt->rate; clkt++) {
  if (clkt->rate == rate) {
   table = clkt;
   break;
  } else if (clkt->rate < rate)
   table = clkt;
 }

 return table;
}
