
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_div_table {int div; } ;



__attribute__((used)) static bool _is_valid_table_div(const struct clk_div_table *table,
    unsigned int div)
{
 const struct clk_div_table *clkt;

 for (clkt = table; clkt->div; clkt++)
  if (clkt->div == div)
   return 1;
 return 0;
}
