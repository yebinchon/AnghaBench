
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct clocksource {int dummy; } ;


 int PCCTCNT1 ;
 int PCCTOVR1 ;
 int PCC_TIMER_CYCLES ;
 scalar_t__ clk_total ;
 int in_8 (int ) ;
 int in_be32 (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static u64 mvme16x_read_clk(struct clocksource *cs)
{
 unsigned long flags;
 u8 overflow, tmp;
 u32 ticks;

 local_irq_save(flags);
 tmp = in_8(PCCTOVR1) >> 4;
 ticks = in_be32(PCCTCNT1);
 overflow = in_8(PCCTOVR1) >> 4;
 if (overflow != tmp)
  ticks = in_be32(PCCTCNT1);
 ticks += overflow * PCC_TIMER_CYCLES;
 ticks += clk_total;
 local_irq_restore(flags);

 return ticks;
}
