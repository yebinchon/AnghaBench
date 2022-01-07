
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irq_handler_t ;


 int CLOCK_PRE ;
 int CLOCK_SOURCE ;
 int HZ ;
 int TCMP ;
 int TCTL ;
 int TCTL_IRQEN ;
 int TCTL_OM ;
 int TCTL_TEN ;
 int TICKS_PER_JIFFY ;
 int TMR_IRQ_NUM ;
 int TPRER ;
 int clocksource_register_hz (int *,int) ;
 int m68328_clk ;
 int m68328_timer_irq ;
 int setup_irq (int ,int *) ;
 int timer_interrupt ;

void hw_timer_init(irq_handler_t handler)
{

 TCTL = 0;


 setup_irq(TMR_IRQ_NUM, &m68328_timer_irq);


 TCTL = TCTL_OM | TCTL_IRQEN | CLOCK_SOURCE;
 TPRER = CLOCK_PRE;
 TCMP = TICKS_PER_JIFFY;


 TCTL |= TCTL_TEN;
 clocksource_register_hz(&m68328_clk, TICKS_PER_JIFFY*HZ);
 timer_interrupt = handler;
}
