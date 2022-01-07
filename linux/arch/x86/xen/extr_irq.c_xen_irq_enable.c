
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_info {int evtchn_upcall_pending; scalar_t__ evtchn_upcall_mask; } ;


 int barrier () ;
 int preempt_disable () ;
 int preempt_enable () ;
 struct vcpu_info* this_cpu_read (int ) ;
 scalar_t__ unlikely (int ) ;
 int xen_force_evtchn_callback () ;
 int xen_vcpu ;

void xen_irq_enable(void)
{
 struct vcpu_info *vcpu;






 preempt_disable();

 vcpu = this_cpu_read(xen_vcpu);
 vcpu->evtchn_upcall_mask = 0;




 barrier();
 if (unlikely(vcpu->evtchn_upcall_pending))
  xen_force_evtchn_callback();

 preempt_enable();
}
