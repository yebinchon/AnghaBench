
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * v; } ;
struct vcpu_register_time_memory_area {TYPE_1__ addr; } ;


 int HYPERVISOR_vcpu_op (int ,int ,struct vcpu_register_time_memory_area*) ;
 int VCPUOP_register_vcpu_time_memory_area ;
 int clear_page (int ) ;
 int pr_notice (char*,int) ;
 int xen_clock ;
 scalar_t__ xen_clock_value_saved ;
 scalar_t__ xen_clocksource_read () ;
 scalar_t__ xen_sched_clock_offset ;

void xen_save_time_memory_area(void)
{
 struct vcpu_register_time_memory_area t;
 int ret;

 xen_clock_value_saved = xen_clocksource_read() - xen_sched_clock_offset;

 if (!xen_clock)
  return;

 t.addr.v = ((void*)0);

 ret = HYPERVISOR_vcpu_op(VCPUOP_register_vcpu_time_memory_area, 0, &t);
 if (ret != 0)
  pr_notice("Cannot save secondary vcpu_time_info (err %d)",
     ret);
 else
  clear_page(xen_clock);
}
