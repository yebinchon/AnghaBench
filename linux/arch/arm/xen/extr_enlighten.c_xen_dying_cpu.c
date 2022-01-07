
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_percpu_irq (int ) ;
 int xen_events_irq ;

__attribute__((used)) static int xen_dying_cpu(unsigned int cpu)
{
 disable_percpu_irq(xen_events_irq);
 return 0;
}
