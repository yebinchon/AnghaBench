
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int con_id; int dev_id; } ;
struct clk {unsigned long* rates; unsigned long rate; TYPE_1__ cl; } ;


 int clk_good (struct clk*) ;
 int pr_err (char*,int ,int ,unsigned long) ;
 scalar_t__ unlikely (int) ;

int clk_set_rate(struct clk *clk, unsigned long rate)
{
 if (unlikely(!clk_good(clk)))
  return 0;
 if (clk->rates && *clk->rates) {
  unsigned long *r = clk->rates;

  while (*r && (*r != rate))
   r++;
  if (!*r) {
   pr_err("clk %s.%s: trying to set invalid rate %ld\n",
    clk->cl.dev_id, clk->cl.con_id, rate);
   return -1;
  }
 }
 clk->rate = rate;
 return 0;
}
