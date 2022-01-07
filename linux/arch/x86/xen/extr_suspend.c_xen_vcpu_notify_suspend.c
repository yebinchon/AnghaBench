
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MSR_IA32_SPEC_CTRL ;
 int X86_FEATURE_SPEC_CTRL ;
 scalar_t__ boot_cpu_has (int ) ;
 int rdmsrl (int ,int ) ;
 int spec_ctrl ;
 int this_cpu_write (int ,int ) ;
 int tick_suspend_local () ;
 int wrmsrl (int ,int ) ;
 scalar_t__ xen_pv_domain () ;

__attribute__((used)) static void xen_vcpu_notify_suspend(void *data)
{
 u64 tmp;

 tick_suspend_local();

 if (xen_pv_domain() && boot_cpu_has(X86_FEATURE_SPEC_CTRL)) {
  rdmsrl(MSR_IA32_SPEC_CTRL, tmp);
  this_cpu_write(spec_ctrl, tmp);
  wrmsrl(MSR_IA32_SPEC_CTRL, 0);
 }
}
