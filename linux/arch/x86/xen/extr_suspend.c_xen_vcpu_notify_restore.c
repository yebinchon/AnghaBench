
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_IA32_SPEC_CTRL ;
 int X86_FEATURE_SPEC_CTRL ;
 scalar_t__ boot_cpu_has (int ) ;
 scalar_t__ smp_processor_id () ;
 int spec_ctrl ;
 int this_cpu_read (int ) ;
 int tick_resume_local () ;
 int wrmsrl (int ,int ) ;
 scalar_t__ xen_pv_domain () ;

__attribute__((used)) static void xen_vcpu_notify_restore(void *data)
{
 if (xen_pv_domain() && boot_cpu_has(X86_FEATURE_SPEC_CTRL))
  wrmsrl(MSR_IA32_SPEC_CTRL, this_cpu_read(spec_ctrl));


 if (smp_processor_id() == 0)
  return;

 tick_resume_local();
}
