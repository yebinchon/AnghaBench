
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct clocksource {int dummy; } ;
struct TYPE_4__ {int pcdr; } ;
struct TYPE_3__ {int msr; int t1cr_omr; unsigned char t1msb; unsigned char t1lsb; } ;
typedef TYPE_1__* RtcPtr_t ;
typedef TYPE_2__* PitRegsPtr ;


 int BVME_PIT_BASE ;
 int BVME_RTC_BASE ;
 int RTC_TIMER_COUNT ;
 int RTC_TIMER_CYCLES ;
 int abs (int) ;
 int clk_offset ;
 scalar_t__ clk_total ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static u64 bvme6000_read_clk(struct clocksource *cs)
{
    unsigned long flags;
    volatile RtcPtr_t rtc = (RtcPtr_t)BVME_RTC_BASE;
    volatile PitRegsPtr pit = (PitRegsPtr)BVME_PIT_BASE;
    unsigned char msr, msb;
    unsigned char t1int, t1op;
    u32 v = 800000, ov;

    local_irq_save(flags);

    msr = rtc->msr & 0xc0;
    rtc->msr = 0;

    do {
 ov = v;
 t1int = rtc->msr & 0x20;
 t1op = pit->pcdr & 0x04;
 rtc->t1cr_omr |= 0x40;
 msb = rtc->t1msb;
 v = (msb << 8) | rtc->t1lsb;
    } while (t1int != (rtc->msr & 0x20) ||
  t1op != (pit->pcdr & 0x04) ||
   abs(ov-v) > 80 ||
    v > RTC_TIMER_COUNT - (RTC_TIMER_COUNT / 100));

    v = RTC_TIMER_COUNT - v;
    if (!t1op)
 v += RTC_TIMER_CYCLES / 2;
    if (msb > 0 && t1int)
 clk_offset = RTC_TIMER_CYCLES;
    rtc->msr = msr;

    v += clk_offset + clk_total;

    local_irq_restore(flags);

    return v;
}
