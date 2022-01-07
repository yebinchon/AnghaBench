
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCFINTC_TIMER1 ;
 int MCFINTC_TIMER2 ;
 int MCFSIM_ICR_AUTOVEC ;
 int MCFSIM_ICR_LEVEL6 ;
 int MCFSIM_ICR_LEVEL7 ;
 int MCFSIM_ICR_PRI3 ;
 int MCFSIM_TIMER1ICR ;
 int MCFSIM_TIMER2ICR ;
 int MCF_IRQ_PROFILER ;
 int MCF_IRQ_TIMER ;
 int mcf_mapirq2imr (int ,int ) ;
 int writeb (int,int ) ;

__attribute__((used)) static void init_timer_irq(void)
{
}
