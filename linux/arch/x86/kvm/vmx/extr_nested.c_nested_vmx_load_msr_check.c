
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmx_msr_entry {scalar_t__ index; } ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ CC (int) ;
 int EINVAL ;
 scalar_t__ MSR_FS_BASE ;
 scalar_t__ MSR_GS_BASE ;
 scalar_t__ MSR_IA32_SMM_MONITOR_CTL ;
 scalar_t__ nested_vmx_msr_check_common (struct kvm_vcpu*,struct vmx_msr_entry*) ;

__attribute__((used)) static int nested_vmx_load_msr_check(struct kvm_vcpu *vcpu,
         struct vmx_msr_entry *e)
{
 if (CC(e->index == MSR_FS_BASE) ||
     CC(e->index == MSR_GS_BASE) ||
     CC(e->index == MSR_IA32_SMM_MONITOR_CTL) ||
     nested_vmx_msr_check_common(vcpu, e))
  return -EINVAL;
 return 0;
}
