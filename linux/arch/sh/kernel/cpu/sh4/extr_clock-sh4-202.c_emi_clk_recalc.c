
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int CPG2_FRQCR3 ;
 int __raw_readl (int ) ;
 unsigned long* frqcr3_divisors ;

__attribute__((used)) static unsigned long emi_clk_recalc(struct clk *clk)
{
 int idx = __raw_readl(CPG2_FRQCR3) & 0x0007;
 return clk->parent->rate / frqcr3_divisors[idx];
}
