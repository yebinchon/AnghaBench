
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_factor_table {unsigned int val; scalar_t__ div; } ;



__attribute__((used)) static unsigned int _get_table_maxval(const struct clk_factor_table *table)
{
 unsigned int maxval = 0;
 const struct clk_factor_table *clkt;

 for (clkt = table; clkt->div; clkt++)
  if (clkt->val > maxval)
   maxval = clkt->val;
 return maxval;
}
