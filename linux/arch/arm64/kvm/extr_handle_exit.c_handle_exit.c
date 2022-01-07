
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_run {void* exit_reason; } ;


 int ARM_EXCEPTION_CODE (int) ;





 scalar_t__ ARM_SERROR_PENDING (int) ;
 int EINVAL ;
 scalar_t__ ESR_ELx_EC (int ) ;
 scalar_t__ ESR_ELx_EC_HVC32 ;
 scalar_t__ ESR_ELx_EC_HVC64 ;
 scalar_t__ ESR_ELx_EC_SMC32 ;
 scalar_t__ ESR_ELx_EC_SMC64 ;
 void* KVM_EXIT_FAIL_ENTRY ;
 void* KVM_EXIT_INTERNAL_ERROR ;
 int handle_trap_exceptions (struct kvm_vcpu*,struct kvm_run*) ;
 int kvm_pr_unimpl (char*,int) ;
 int kvm_vcpu_get_hsr (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_trap_il_is32bit (struct kvm_vcpu*) ;
 int * vcpu_pc (struct kvm_vcpu*) ;

int handle_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
         int exception_index)
{
 if (ARM_SERROR_PENDING(exception_index)) {
  u8 hsr_ec = ESR_ELx_EC(kvm_vcpu_get_hsr(vcpu));






  if (hsr_ec == ESR_ELx_EC_HVC32 || hsr_ec == ESR_ELx_EC_HVC64 ||
      hsr_ec == ESR_ELx_EC_SMC32 || hsr_ec == ESR_ELx_EC_SMC64) {
   u32 adj = kvm_vcpu_trap_il_is32bit(vcpu) ? 4 : 2;
   *vcpu_pc(vcpu) -= adj;
  }

  return 1;
 }

 exception_index = ARM_EXCEPTION_CODE(exception_index);

 switch (exception_index) {
 case 129:
  return 1;
 case 132:
  return 1;
 case 128:
  return handle_trap_exceptions(vcpu, run);
 case 131:




  run->exit_reason = KVM_EXIT_FAIL_ENTRY;
  return 0;
 case 130:




  run->exit_reason = KVM_EXIT_FAIL_ENTRY;
  return -EINVAL;
 default:
  kvm_pr_unimpl("Unsupported exception type: %d",
         exception_index);
  run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
  return 0;
 }
}
