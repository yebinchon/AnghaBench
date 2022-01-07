
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int FREQCR ;
 int __raw_readw (int ) ;
 unsigned long* pll1rate ;

__attribute__((used)) static unsigned long bus_clk_recalc(struct clk *clk)
{
 return clk->parent->rate / pll1rate[(__raw_readw(FREQCR) >> 8) & 7];
}
