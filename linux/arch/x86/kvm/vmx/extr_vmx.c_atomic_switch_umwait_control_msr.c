
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vcpu_vmx {scalar_t__ msr_ia32_umwait_control; } ;


 int MSR_IA32_UMWAIT_CONTROL ;
 int add_atomic_switch_msr (struct vcpu_vmx*,int ,scalar_t__,scalar_t__,int) ;
 int clear_atomic_switch_msr (struct vcpu_vmx*,int ) ;
 scalar_t__ get_umwait_control_msr () ;
 int vmx_has_waitpkg (struct vcpu_vmx*) ;

__attribute__((used)) static void atomic_switch_umwait_control_msr(struct vcpu_vmx *vmx)
{
 u32 host_umwait_control;

 if (!vmx_has_waitpkg(vmx))
  return;

 host_umwait_control = get_umwait_control_msr();

 if (vmx->msr_ia32_umwait_control != host_umwait_control)
  add_atomic_switch_msr(vmx, MSR_IA32_UMWAIT_CONTROL,
   vmx->msr_ia32_umwait_control,
   host_umwait_control, 0);
 else
  clear_atomic_switch_msr(vmx, MSR_IA32_UMWAIT_CONTROL);
}
