
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int irq_handler_t ;


 scalar_t__ WARN (int,char*,int,...) ;
 int of_irq_get (struct device_node*,int) ;
 int request_irq (int,int ,int ,char const*,int *) ;

void request_event_sources_irqs(struct device_node *np,
    irq_handler_t handler,
    const char *name)
{
 int i, virq, rc;

 for (i = 0; i < 16; i++) {
  virq = of_irq_get(np, i);
  if (virq < 0)
   return;
  if (WARN(!virq, "event-sources: Unable to allocate "
           "interrupt number for %pOF\n", np))
   continue;

  rc = request_irq(virq, handler, 0, name, ((void*)0));
  if (WARN(rc, "event-sources: Unable to request interrupt %d for %pOF\n",
      virq, np))
   return;
 }
}
