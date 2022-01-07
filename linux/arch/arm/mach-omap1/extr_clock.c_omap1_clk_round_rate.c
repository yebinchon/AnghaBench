
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {long (* round_rate ) (struct clk*,unsigned long) ;long rate; } ;


 long stub1 (struct clk*,unsigned long) ;

long omap1_clk_round_rate(struct clk *clk, unsigned long rate)
{
 if (clk->round_rate != ((void*)0))
  return clk->round_rate(clk, rate);

 return clk->rate;
}
