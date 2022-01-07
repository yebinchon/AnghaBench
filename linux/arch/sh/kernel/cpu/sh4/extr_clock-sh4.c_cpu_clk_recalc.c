
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int FRQCR ;
 int __raw_readw (int ) ;
 unsigned long* ifc_divisors ;

__attribute__((used)) static unsigned long cpu_clk_recalc(struct clk *clk)
{
 int idx = (__raw_readw(FRQCR) >> 6) & 0x0007;
 return clk->parent->rate / ifc_divisors[idx];
}
