
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {long (* round_rate ) (struct clk*,unsigned long) ;long rate; } ;


 long EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 long stub1 (struct clk*,unsigned long) ;

long clk_round_rate(struct clk *clk, unsigned long rate)
{
 if (clk == ((void*)0) || IS_ERR(clk))
  return -EINVAL;

 if (clk->round_rate)
  return clk->round_rate(clk, rate);

 return clk->rate;
}
