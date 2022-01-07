
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int FRQCR ;
 int __raw_readw (int ) ;
 unsigned long* pfc_divisors ;

__attribute__((used)) static unsigned long module_clk_recalc(struct clk *clk)
{
 int frqcr = __raw_readw(FRQCR);
 int idx = ((frqcr & 0x2000) >> 11) | (frqcr & 0x0003);

 return clk->parent->rate / pfc_divisors[idx];
}
