
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {unsigned long fixed_div; TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int WARN_ON (int) ;

unsigned long omap_fixed_divisor_recalc(struct clk *clk)
{
 WARN_ON(!clk->fixed_div);

 return clk->parent->rate / clk->fixed_div;
}
