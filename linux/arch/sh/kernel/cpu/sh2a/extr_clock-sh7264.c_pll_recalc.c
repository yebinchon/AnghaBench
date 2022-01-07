
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int FRQCR ;
 int __raw_readw (int ) ;
 unsigned long pll1_div ;
 unsigned long* pll1rate ;

__attribute__((used)) static unsigned long pll_recalc(struct clk *clk)
{
 unsigned long rate = clk->parent->rate / pll1_div;
 return rate * pll1rate[(__raw_readw(FRQCR) >> 8) & 1];
}
