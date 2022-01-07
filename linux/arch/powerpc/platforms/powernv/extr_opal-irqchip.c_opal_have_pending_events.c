
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; } ;


 int last_outstanding_events ;
 TYPE_1__ opal_event_irqchip ;

bool opal_have_pending_events(void)
{
 if (last_outstanding_events & opal_event_irqchip.mask)
  return 1;
 return 0;
}
