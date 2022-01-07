
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct clocksource {int mask; } ;
struct TYPE_2__ {int reg; } ;


 scalar_t__ readl_relaxed (int ) ;
 TYPE_1__* to_mmio_clksrc (struct clocksource*) ;

u64 clocksource_mmio_readl_down(struct clocksource *c)
{
 return ~(u64)readl_relaxed(to_mmio_clksrc(c)->reg) & c->mask;
}
