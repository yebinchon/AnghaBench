
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_set_singleshot_timer {scalar_t__ flags; int timeout_abs_ns; } ;
struct clock_event_device {int dummy; } ;


 int BUG_ON (int) ;
 int HYPERVISOR_vcpu_op (int ,int ,struct vcpu_set_singleshot_timer*) ;
 int VCPUOP_set_singleshot_timer ;
 int WARN_ON (int) ;
 int clockevent_state_oneshot (struct clock_event_device*) ;
 int get_abs_timeout (unsigned long) ;
 int smp_processor_id () ;
 int xen_vcpu_nr (int) ;

__attribute__((used)) static int xen_vcpuop_set_next_event(unsigned long delta,
         struct clock_event_device *evt)
{
 int cpu = smp_processor_id();
 struct vcpu_set_singleshot_timer single;
 int ret;

 WARN_ON(!clockevent_state_oneshot(evt));

 single.timeout_abs_ns = get_abs_timeout(delta);

 single.flags = 0;

 ret = HYPERVISOR_vcpu_op(VCPUOP_set_singleshot_timer, xen_vcpu_nr(cpu),
     &single);
 BUG_ON(ret != 0);

 return ret;
}
