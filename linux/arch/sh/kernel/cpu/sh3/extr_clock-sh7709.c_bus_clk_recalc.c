
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int FRQCR ;
 int __raw_readw (int ) ;
 unsigned long* stc_multipliers ;

__attribute__((used)) static unsigned long bus_clk_recalc(struct clk *clk)
{
 int frqcr = __raw_readw(FRQCR);
 int idx = (frqcr & 0x0080) ?
  ((frqcr & 0x8000) >> 13) | ((frqcr & 0x0030) >> 4) : 1;

 return clk->parent->rate * stc_multipliers[idx];
}
