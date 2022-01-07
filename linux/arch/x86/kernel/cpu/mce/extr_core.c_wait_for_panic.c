
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ panic_timeout; } ;


 long PANIC_TIMEOUT ;
 long USEC_PER_SEC ;
 int local_irq_enable () ;
 TYPE_1__ mca_cfg ;
 int panic (char*) ;
 scalar_t__ panic_timeout ;
 int preempt_disable () ;
 int udelay (int) ;

__attribute__((used)) static void wait_for_panic(void)
{
 long timeout = PANIC_TIMEOUT*USEC_PER_SEC;

 preempt_disable();
 local_irq_enable();
 while (timeout-- > 0)
  udelay(1);
 if (panic_timeout == 0)
  panic_timeout = mca_cfg.panic_timeout;
 panic("Panicing machine check CPU died");
}
