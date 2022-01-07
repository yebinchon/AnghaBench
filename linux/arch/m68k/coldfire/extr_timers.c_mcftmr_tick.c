
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int MCFTIMER_TER ;
 int MCFTIMER_TER_CAP ;
 int MCFTIMER_TER_REF ;
 int TA (int ) ;
 int __raw_writeb (int,int ) ;
 int mcftmr_cnt ;
 scalar_t__ mcftmr_cycles_per_jiffy ;
 int timer_interrupt (int,void*) ;

__attribute__((used)) static irqreturn_t mcftmr_tick(int irq, void *dummy)
{

 __raw_writeb(MCFTIMER_TER_CAP | MCFTIMER_TER_REF, TA(MCFTIMER_TER));

 mcftmr_cnt += mcftmr_cycles_per_jiffy;
 return timer_interrupt(irq, dummy);
}
