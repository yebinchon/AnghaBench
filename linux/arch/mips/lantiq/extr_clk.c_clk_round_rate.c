
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned long* rates; long rate; } ;


 int clk_good (struct clk*) ;
 scalar_t__ unlikely (int) ;

long clk_round_rate(struct clk *clk, unsigned long rate)
{
 if (unlikely(!clk_good(clk)))
  return 0;
 if (clk->rates && *clk->rates) {
  unsigned long *r = clk->rates;

  while (*r && (*r != rate))
   r++;
  if (!*r) {
   return clk->rate;
  }
 }
 return rate;
}
