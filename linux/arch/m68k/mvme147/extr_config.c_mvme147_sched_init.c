
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irq_handler_t ;
struct TYPE_2__ {int t1_cntrl; int t1_int_cntrl; int t1_preload; } ;


 int IRQF_TIMER ;
 int PCC_INT_ENAB ;
 int PCC_IRQ_TIMER1 ;
 int PCC_LEVEL_TIMER1 ;
 int PCC_TIMER_CLOCK_FREQ ;
 int PCC_TIMER_INT_CLR ;
 int PCC_TIMER_PRELOAD ;
 int clocksource_register_hz (int *,int ) ;
 TYPE_1__* m147_pcc ;
 int mvme147_clk ;
 int mvme147_timer_int ;
 int pr_err (char*) ;
 scalar_t__ request_irq (int ,int ,int ,char*,int ) ;

void mvme147_sched_init (irq_handler_t timer_routine)
{
 if (request_irq(PCC_IRQ_TIMER1, mvme147_timer_int, IRQF_TIMER,
   "timer 1", timer_routine))
  pr_err("Couldn't register timer interrupt\n");



 m147_pcc->t1_preload = PCC_TIMER_PRELOAD;
 m147_pcc->t1_cntrl = 0x0;
 m147_pcc->t1_cntrl = 0x3;
 m147_pcc->t1_int_cntrl = PCC_TIMER_INT_CLR;
 m147_pcc->t1_int_cntrl = PCC_INT_ENAB|PCC_LEVEL_TIMER1;

 clocksource_register_hz(&mvme147_clk, PCC_TIMER_CLOCK_FREQ);
}
