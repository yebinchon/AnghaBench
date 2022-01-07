
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_div_table {int div; } ;


 unsigned int UINT_MAX ;

__attribute__((used)) static unsigned int _get_table_mindiv(const struct clk_div_table *table)
{
 unsigned int mindiv = UINT_MAX;
 const struct clk_div_table *clkt;

 for (clkt = table; clkt->div; clkt++)
  if (clkt->div < mindiv)
   mindiv = clkt->div;
 return mindiv;
}
