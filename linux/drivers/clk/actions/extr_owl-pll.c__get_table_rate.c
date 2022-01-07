
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pll_table {unsigned long rate; unsigned int val; } ;



__attribute__((used)) static unsigned long _get_table_rate(const struct clk_pll_table *table,
  unsigned int val)
{
 const struct clk_pll_table *clkt;

 for (clkt = table; clkt->rate; clkt++)
  if (clkt->val == val)
   return clkt->rate;

 return 0;
}
