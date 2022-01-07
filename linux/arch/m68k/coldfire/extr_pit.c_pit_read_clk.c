
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct clocksource {int dummy; } ;


 int MCFPIT_PCNTR ;
 scalar_t__ PIT_CYCLES_PER_JIFFY ;
 int TA (int ) ;
 scalar_t__ __raw_readw (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ pit_cnt ;

__attribute__((used)) static u64 pit_read_clk(struct clocksource *cs)
{
 unsigned long flags;
 u32 cycles;
 u16 pcntr;

 local_irq_save(flags);
 pcntr = __raw_readw(TA(MCFPIT_PCNTR));
 cycles = pit_cnt;
 local_irq_restore(flags);

 return cycles + PIT_CYCLES_PER_JIFFY - pcntr;
}
