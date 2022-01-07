
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int irq_handler_t ;
struct TYPE_2__ {int brdno; } ;


 int IRQF_TIMER ;
 int MVME162_IRQ_ABORT ;
 int MVME167_IRQ_ABORT ;
 int MVME16x_IRQ_TIMER ;
 int PCCTCMP1 ;
 int PCCTCNT1 ;
 int PCCTIC1 ;
 int PCCTIC1_INT_EN ;
 int PCCTOVR1 ;
 int PCCTOVR1_COC_EN ;
 int PCCTOVR1_TIC_EN ;
 int PCC_TIMER_CLOCK_FREQ ;
 int PCC_TIMER_CYCLES ;
 int be16_to_cpu (int ) ;
 int clocksource_register_hz (int *,int ) ;
 int in_8 (int ) ;
 int mvme16x_abort_int ;
 int mvme16x_clk ;
 int mvme16x_timer_int ;
 TYPE_1__ mvme_bdid ;
 int out_8 (int ,int) ;
 int out_be32 (int ,int ) ;
 int panic (char*) ;
 scalar_t__ request_irq (int,int ,int ,char*,int ) ;

void mvme16x_sched_init (irq_handler_t timer_routine)
{
    uint16_t brdno = be16_to_cpu(mvme_bdid.brdno);
    int irq;


    out_be32(PCCTCNT1, 0);
    out_be32(PCCTCMP1, PCC_TIMER_CYCLES);
    out_8(PCCTOVR1, in_8(PCCTOVR1) | PCCTOVR1_TIC_EN | PCCTOVR1_COC_EN);
    out_8(PCCTIC1, PCCTIC1_INT_EN | 6);
    if (request_irq(MVME16x_IRQ_TIMER, mvme16x_timer_int, IRQF_TIMER, "timer",
                    timer_routine))
 panic ("Couldn't register timer int");

    clocksource_register_hz(&mvme16x_clk, PCC_TIMER_CLOCK_FREQ);

    if (brdno == 0x0162 || brdno == 0x172)
 irq = MVME162_IRQ_ABORT;
    else
        irq = MVME167_IRQ_ABORT;
    if (request_irq(irq, mvme16x_abort_int, 0,
    "abort", mvme16x_abort_int))
 panic ("Couldn't register abort int");
}
