
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;


 int calc_dsor_exp (struct clk*,unsigned long) ;

long omap1_clk_round_rate_ckctl_arm(struct clk *clk, unsigned long rate)
{
 int dsor_exp = calc_dsor_exp(clk, rate);
 if (dsor_exp < 0)
  return dsor_exp;
 if (dsor_exp > 3)
  dsor_exp = 3;
 return clk->parent->rate / (1 << dsor_exp);
}
