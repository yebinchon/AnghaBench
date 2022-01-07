
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irq_handler_t ;


 int HZ ;
 int MCFSLT_SCR ;
 int MCFSLT_SCR_IEN ;
 int MCFSLT_SCR_RUN ;
 int MCFSLT_SCR_TEN ;
 int MCFSLT_STCNT ;
 int MCF_BUSCLK ;
 int MCF_IRQ_TIMER ;
 int TA (int ) ;
 int __raw_writel (int,int ) ;
 int clocksource_register_hz (int *,int) ;
 int mcfslt_clk ;
 int mcfslt_cnt ;
 int mcfslt_cycles_per_jiffy ;
 int mcfslt_profile_init () ;
 int mcfslt_timer_irq ;
 int setup_irq (int ,int *) ;
 int timer_interrupt ;

void hw_timer_init(irq_handler_t handler)
{
 mcfslt_cycles_per_jiffy = MCF_BUSCLK / HZ;






 __raw_writel(mcfslt_cycles_per_jiffy - 1, TA(MCFSLT_STCNT));
 __raw_writel(MCFSLT_SCR_RUN | MCFSLT_SCR_IEN | MCFSLT_SCR_TEN,
        TA(MCFSLT_SCR));

 mcfslt_cnt = mcfslt_cycles_per_jiffy;

 timer_interrupt = handler;
 setup_irq(MCF_IRQ_TIMER, &mcfslt_timer_irq);

 clocksource_register_hz(&mcfslt_clk, MCF_BUSCLK);




}
