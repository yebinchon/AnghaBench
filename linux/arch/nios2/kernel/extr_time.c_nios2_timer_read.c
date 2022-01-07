
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nios2_clocksource {int timer; } ;
struct clocksource {int dummy; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int read_timersnapshot (int *) ;
 struct nios2_clocksource* to_nios2_clksource (struct clocksource*) ;

__attribute__((used)) static u64 nios2_timer_read(struct clocksource *cs)
{
 struct nios2_clocksource *nios2_cs = to_nios2_clksource(cs);
 unsigned long flags;
 u32 count;

 local_irq_save(flags);
 count = read_timersnapshot(&nios2_cs->timer);
 local_irq_restore(flags);


 return ~count;
}
