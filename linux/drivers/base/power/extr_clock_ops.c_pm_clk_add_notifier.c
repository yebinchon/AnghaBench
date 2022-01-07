
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int notifier_call; } ;
struct pm_clk_notifier_block {TYPE_1__ nb; } ;
struct bus_type {int dummy; } ;


 int bus_register_notifier (struct bus_type*,TYPE_1__*) ;
 int pm_clk_notify ;

void pm_clk_add_notifier(struct bus_type *bus,
     struct pm_clk_notifier_block *clknb)
{
 if (!bus || !clknb)
  return;

 clknb->nb.notifier_call = pm_clk_notify;
 bus_register_notifier(bus, &clknb->nb);
}
