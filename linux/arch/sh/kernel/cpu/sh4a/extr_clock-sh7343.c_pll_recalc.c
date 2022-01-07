
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int FRQCR ;
 int PLLCR ;
 int __raw_readl (int ) ;

__attribute__((used)) static unsigned long pll_recalc(struct clk *clk)
{
 unsigned long mult = 1;

 if (__raw_readl(PLLCR) & 0x4000)
  mult = (((__raw_readl(FRQCR) >> 24) & 0x1f) + 1);

 return clk->parent->rate * mult;
}
