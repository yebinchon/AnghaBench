
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_div_table {int div; unsigned int val; } ;


 unsigned int clk_div_mask (int ) ;

__attribute__((used)) static unsigned int _get_table_maxdiv(const struct clk_div_table *table,
          u8 width)
{
 unsigned int maxdiv = 0, mask = clk_div_mask(width);
 const struct clk_div_table *clkt;

 for (clkt = table; clkt->div; clkt++)
  if (clkt->div > maxdiv && clkt->val <= mask)
   maxdiv = clkt->div;
 return maxdiv;
}
