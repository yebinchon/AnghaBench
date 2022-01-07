
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_div_table {int div; } ;


 int INT_MAX ;

__attribute__((used)) static int _round_up_table(const struct clk_div_table *table, int div)
{
 const struct clk_div_table *clkt;
 int up = INT_MAX;

 for (clkt = table; clkt->div; clkt++) {
  if (clkt->div == div)
   return clkt->div;
  else if (clkt->div < div)
   continue;

  if ((clkt->div - div) < (up - div))
   up = clkt->div;
 }

 return up;
}
