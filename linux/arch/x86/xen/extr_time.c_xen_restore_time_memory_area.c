
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * v; } ;
struct vcpu_register_time_memory_area {TYPE_1__ addr; } ;
struct TYPE_4__ {int pvti; } ;


 int HYPERVISOR_vcpu_op (int ,int ,struct vcpu_register_time_memory_area*) ;
 int VCPUOP_register_vcpu_time_memory_area ;
 int pr_notice (char*,int) ;
 int pvclock_resume () ;
 TYPE_2__* xen_clock ;
 scalar_t__ xen_clock_value_saved ;
 scalar_t__ xen_clocksource_read () ;
 scalar_t__ xen_sched_clock_offset ;

void xen_restore_time_memory_area(void)
{
 struct vcpu_register_time_memory_area t;
 int ret;

 if (!xen_clock)
  goto out;

 t.addr.v = &xen_clock->pvti;

 ret = HYPERVISOR_vcpu_op(VCPUOP_register_vcpu_time_memory_area, 0, &t);
 if (ret != 0)
  pr_notice("Cannot restore secondary vcpu_time_info (err %d)",
     ret);

out:

 pvclock_resume();
 xen_sched_clock_offset = xen_clocksource_read() - xen_clock_value_saved;
}
