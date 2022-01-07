
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irq_handler_t ;
struct TYPE_2__ {int msr; int t1cr_omr; int t1msb; int t1lsb; int irr_icr1; int pfr_icr0; int t0cr_rtmr; } ;
typedef TYPE_1__* RtcPtr_t ;


 int BVME_IRQ_ABORT ;
 int BVME_IRQ_RTC ;
 int BVME_RTC_BASE ;
 int IRQF_TIMER ;
 int RTC_TIMER_CLOCK_FREQ ;
 int RTC_TIMER_COUNT ;
 int bvme6000_abort_int ;
 int bvme6000_clk ;
 int bvme6000_timer_int ;
 int clocksource_register_hz (int *,int ) ;
 int panic (char*) ;
 scalar_t__ request_irq (int ,int ,int ,char*,int ) ;

void bvme6000_sched_init (irq_handler_t timer_routine)
{
    volatile RtcPtr_t rtc = (RtcPtr_t)BVME_RTC_BASE;
    unsigned char msr = rtc->msr & 0xc0;

    rtc->msr = 0;

    if (request_irq(BVME_IRQ_RTC, bvme6000_timer_int, IRQF_TIMER, "timer",
                    timer_routine))
 panic ("Couldn't register timer int");

    rtc->t1cr_omr = 0x04;
    rtc->t1msb = RTC_TIMER_COUNT >> 8;
    rtc->t1lsb = RTC_TIMER_COUNT & 0xff;
    rtc->irr_icr1 &= 0xef;
    rtc->msr = 0x40;
    rtc->pfr_icr0 = 0x80;
    rtc->irr_icr1 = 0;
    rtc->t1cr_omr = 0x0a;
    rtc->t0cr_rtmr &= 0xdf;
    rtc->msr = 0;
    rtc->t1cr_omr = 0x05;

    rtc->msr = msr;

    clocksource_register_hz(&bvme6000_clk, RTC_TIMER_CLOCK_FREQ);

    if (request_irq(BVME_IRQ_ABORT, bvme6000_abort_int, 0,
    "abort", bvme6000_abort_int))
 panic ("Couldn't register abort int");
}
