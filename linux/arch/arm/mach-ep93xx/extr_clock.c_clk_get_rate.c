
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned long (* get_rate ) (struct clk*) ;unsigned long rate; } ;


 unsigned long stub1 (struct clk*) ;

unsigned long clk_get_rate(struct clk *clk)
{
 if (clk->get_rate)
  return clk->get_rate(clk);

 return clk->rate;
}
