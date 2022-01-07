
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int domain; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int irq_create_mapping (int ,unsigned int) ;
 TYPE_1__ opal_event_irqchip ;

int opal_event_request(unsigned int opal_event_nr)
{
 if (WARN_ON_ONCE(!opal_event_irqchip.domain))
  return 0;

 return irq_create_mapping(opal_event_irqchip.domain, opal_event_nr);
}
