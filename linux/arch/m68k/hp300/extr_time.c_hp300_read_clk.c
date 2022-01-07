
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct clocksource {int dummy; } ;


 scalar_t__ CLKLSB1 ;
 scalar_t__ CLKMSB1 ;
 scalar_t__ CLKSR ;
 unsigned char CLKSR_INT1 ;
 scalar_t__ CLOCKBASE ;
 scalar_t__ INTVAL ;
 scalar_t__ clk_offset ;
 scalar_t__ clk_total ;
 unsigned char in_8 (scalar_t__) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static u64 hp300_read_clk(struct clocksource *cs)
{
 unsigned long flags;
 unsigned char lsb, msb, msb_new;
 u32 ticks;

 local_irq_save(flags);

 msb = in_8(CLOCKBASE + CLKMSB1);
again:
 if ((in_8(CLOCKBASE + CLKSR) & CLKSR_INT1) && msb > 0)
  clk_offset = INTVAL;
 lsb = in_8(CLOCKBASE + CLKLSB1);
 msb_new = in_8(CLOCKBASE + CLKMSB1);
 if (msb_new != msb) {
  msb = msb_new;
  goto again;
 }

 ticks = INTVAL - ((msb << 8) | lsb);
 ticks += clk_offset + clk_total;
 local_irq_restore(flags);

 return ticks;
}
