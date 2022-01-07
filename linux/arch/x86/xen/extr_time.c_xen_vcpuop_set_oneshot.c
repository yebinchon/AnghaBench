
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int BUG () ;
 scalar_t__ HYPERVISOR_vcpu_op (int ,int ,int *) ;
 int VCPUOP_stop_periodic_timer ;
 int smp_processor_id () ;
 int xen_vcpu_nr (int) ;

__attribute__((used)) static int xen_vcpuop_set_oneshot(struct clock_event_device *evt)
{
 int cpu = smp_processor_id();

 if (HYPERVISOR_vcpu_op(VCPUOP_stop_periodic_timer, xen_vcpu_nr(cpu),
          ((void*)0)))
  BUG();

 return 0;
}
