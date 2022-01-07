
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPRN_PSSCR ;
 int __ppc64_runlatch_off () ;
 int __ppc64_runlatch_on () ;
 int fini_irq_for_idle_irqsoff () ;
 int irq_set_pending_from_srr1 (unsigned long) ;
 unsigned long mfspr (int ) ;
 unsigned long power9_idle_stop (unsigned long,int) ;
 int prep_irq_for_idle_irqsoff () ;

void power9_idle_type(unsigned long stop_psscr_val,
          unsigned long stop_psscr_mask)
{
 unsigned long psscr;
 unsigned long srr1;

 if (!prep_irq_for_idle_irqsoff())
  return;

 psscr = mfspr(SPRN_PSSCR);
 psscr = (psscr & ~stop_psscr_mask) | stop_psscr_val;

 __ppc64_runlatch_off();
 srr1 = power9_idle_stop(psscr, 1);
 __ppc64_runlatch_on();

 fini_irq_for_idle_irqsoff();

 irq_set_pending_from_srr1(srr1);
}
