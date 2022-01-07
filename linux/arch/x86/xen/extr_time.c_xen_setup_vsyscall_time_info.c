
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* v; } ;
struct vcpu_register_time_memory_area {TYPE_3__ addr; } ;
struct TYPE_6__ {int flags; } ;
struct pvclock_vsyscall_time_info {TYPE_2__ pvti; } ;
struct TYPE_5__ {int vclock_mode; } ;
struct TYPE_8__ {TYPE_1__ archdata; } ;


 int GFP_KERNEL ;
 int HYPERVISOR_vcpu_op (int ,int ,struct vcpu_register_time_memory_area*) ;
 int PVCLOCK_TSC_STABLE_BIT ;
 int VCLOCK_PVCLOCK ;
 int VCPUOP_register_vcpu_time_memory_area ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int pr_notice (char*,...) ;
 int pvclock_set_pvti_cpu0_va (struct pvclock_vsyscall_time_info*) ;
 struct pvclock_vsyscall_time_info* xen_clock ;
 TYPE_4__ xen_clocksource ;

__attribute__((used)) static void xen_setup_vsyscall_time_info(void)
{
 struct vcpu_register_time_memory_area t;
 struct pvclock_vsyscall_time_info *ti;
 int ret;

 ti = (struct pvclock_vsyscall_time_info *)get_zeroed_page(GFP_KERNEL);
 if (!ti)
  return;

 t.addr.v = &ti->pvti;

 ret = HYPERVISOR_vcpu_op(VCPUOP_register_vcpu_time_memory_area, 0, &t);
 if (ret) {
  pr_notice("xen: VCLOCK_PVCLOCK not supported (err %d)\n", ret);
  free_page((unsigned long)ti);
  return;
 }






 if (!(ti->pvti.flags & PVCLOCK_TSC_STABLE_BIT)) {
  t.addr.v = ((void*)0);
  ret = HYPERVISOR_vcpu_op(VCPUOP_register_vcpu_time_memory_area,
      0, &t);
  if (!ret)
   free_page((unsigned long)ti);

  pr_notice("xen: VCLOCK_PVCLOCK not supported (tsc unstable)\n");
  return;
 }

 xen_clock = ti;
 pvclock_set_pvti_cpu0_va(xen_clock);

 xen_clocksource.archdata.vclock_mode = VCLOCK_PVCLOCK;
}
