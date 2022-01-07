
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int MCFSLT_SSR ;
 int MCFSLT_SSR_BE ;
 int MCFSLT_SSR_TE ;
 int TA (int ) ;
 int __raw_writel (int,int ) ;
 int mcfslt_cnt ;
 scalar_t__ mcfslt_cycles_per_jiffy ;
 int timer_interrupt (int,void*) ;

__attribute__((used)) static irqreturn_t mcfslt_tick(int irq, void *dummy)
{

 __raw_writel(MCFSLT_SSR_BE | MCFSLT_SSR_TE, TA(MCFSLT_SSR));
 mcfslt_cnt += mcfslt_cycles_per_jiffy;
 return timer_interrupt(irq, dummy);
}
