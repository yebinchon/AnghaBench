
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int min_rate; } ;


 int clk_set_rate_range (struct clk*,int ,unsigned long) ;

int clk_set_max_rate(struct clk *clk, unsigned long rate)
{
 if (!clk)
  return 0;

 return clk_set_rate_range(clk, clk->min_rate, rate);
}
