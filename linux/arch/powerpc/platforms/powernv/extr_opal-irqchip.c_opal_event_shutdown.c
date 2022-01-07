
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ start; } ;


 int disable_irq_nosync (scalar_t__) ;
 int free_irq (scalar_t__,int *) ;
 scalar_t__ in_interrupt () ;
 scalar_t__ irqs_disabled () ;
 unsigned int opal_irq_count ;
 TYPE_1__* opal_irqs ;

void opal_event_shutdown(void)
{
 unsigned int i;


 for (i = 0; i < opal_irq_count; i++) {
  if (!opal_irqs || !opal_irqs[i].start)
   continue;

  if (in_interrupt() || irqs_disabled())
   disable_irq_nosync(opal_irqs[i].start);
  else
   free_irq(opal_irqs[i].start, ((void*)0));

  opal_irqs[i].start = 0;
 }
}
