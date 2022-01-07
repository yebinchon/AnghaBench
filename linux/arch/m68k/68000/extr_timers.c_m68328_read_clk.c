
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct clocksource {int dummy; } ;


 scalar_t__ TCN ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ m68328_tick_cnt ;

__attribute__((used)) static u64 m68328_read_clk(struct clocksource *cs)
{
 unsigned long flags;
 u32 cycles;

 local_irq_save(flags);
 cycles = m68328_tick_cnt + TCN;
 local_irq_restore(flags);

 return cycles;
}
