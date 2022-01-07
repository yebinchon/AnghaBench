
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int max_rate; } ;


 int clk_set_rate_range (struct clk*,unsigned long,int ) ;

int clk_set_min_rate(struct clk *clk, unsigned long rate)
{
 if (!clk)
  return 0;

 return clk_set_rate_range(clk, rate, clk->max_rate);
}
