
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int hwirq; } ;
struct TYPE_2__ {int mask; } ;


 TYPE_1__ opal_event_irqchip ;
 scalar_t__ opal_have_pending_events () ;
 int opal_wake_poller () ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void opal_event_unmask(struct irq_data *d)
{
 set_bit(d->hwirq, &opal_event_irqchip.mask);
 if (opal_have_pending_events())
  opal_wake_poller();
}
