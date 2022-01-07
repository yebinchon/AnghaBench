
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_regs; unsigned long* priority_mask; } ;


 TYPE_1__* prcm_irq_setup ;

__attribute__((used)) static void omap_prcm_events_filter_priority(unsigned long *events,
 unsigned long *priority_events)
{
 int i;

 for (i = 0; i < prcm_irq_setup->nr_regs; i++) {
  priority_events[i] =
   events[i] & prcm_irq_setup->priority_mask[i];
  events[i] ^= priority_events[i];
 }
}
