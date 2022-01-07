
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int evtchn_upcall_mask; } ;


 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 TYPE_1__* this_cpu_read (int ) ;
 int xen_vcpu ;

void xen_irq_disable(void)
{



 preempt_disable();
 this_cpu_read(xen_vcpu)->evtchn_upcall_mask = 1;
 preempt_enable_no_resched();
}
