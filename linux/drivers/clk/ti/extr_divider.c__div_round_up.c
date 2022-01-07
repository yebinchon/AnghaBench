
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clk_div_table {int div; } ;


 int DIV_ROUND_UP_ULL (int ,unsigned long) ;
 int INT_MAX ;

__attribute__((used)) static int _div_round_up(const struct clk_div_table *table,
    unsigned long parent_rate, unsigned long rate)
{
 const struct clk_div_table *clkt;
 int up = INT_MAX;
 int div = DIV_ROUND_UP_ULL((u64)parent_rate, rate);

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
