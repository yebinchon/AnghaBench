
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 unsigned long PLL_RATE ;

__attribute__((used)) static unsigned long pll_recalc(struct clk *clk)
{
 return clk->parent->rate * PLL_RATE;
}
