
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;
typedef int __be64 ;


 int IRQ_HANDLED ;
 int be64_to_cpu (int ) ;
 int last_outstanding_events ;
 int opal_handle_interrupt (int ,int *) ;
 scalar_t__ opal_have_pending_events () ;
 int opal_wake_poller () ;
 int virq_to_hw (int) ;

__attribute__((used)) static irqreturn_t opal_interrupt(int irq, void *data)
{
 __be64 events;

 opal_handle_interrupt(virq_to_hw(irq), &events);
 last_outstanding_events = be64_to_cpu(events);
 if (opal_have_pending_events())
  opal_wake_poller();

 return IRQ_HANDLED;
}
