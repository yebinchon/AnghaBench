
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_div_table {unsigned int div; unsigned int val; } ;



__attribute__((used)) static unsigned int _get_table_div(const struct clk_div_table *table,
       unsigned int val)
{
 const struct clk_div_table *clkt;

 for (clkt = table; clkt->div; clkt++)
  if (clkt->val == val)
   return clkt->div;
 return 0;
}
