
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int __raw_readw (int ) ;
 int cprc_base ;
 unsigned long* ifc_table ;

__attribute__((used)) static unsigned long bus_clk_recalc(struct clk *clk)
{
 int idx = (__raw_readw(cprc_base) >> 3) & 0x0007;
 return clk->parent->rate / ifc_table[idx];
}
