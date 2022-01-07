
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;


 int ARM64_HAS_RAS_EXTN ;
 int ARM_EXCEPTION_CODE (int) ;
 int ARM_EXCEPTION_EL1_SERROR ;
 scalar_t__ ARM_SERROR_PENDING (int) ;
 int disr_to_esr (int ) ;
 int kvm_handle_guest_serror (struct kvm_vcpu*,int ) ;
 int kvm_inject_vabt (struct kvm_vcpu*) ;
 int kvm_vcpu_get_disr (struct kvm_vcpu*) ;
 int kvm_vcpu_get_hsr (struct kvm_vcpu*) ;
 scalar_t__ this_cpu_has_cap (int ) ;

void handle_exit_early(struct kvm_vcpu *vcpu, struct kvm_run *run,
         int exception_index)
{
 if (ARM_SERROR_PENDING(exception_index)) {
  if (this_cpu_has_cap(ARM64_HAS_RAS_EXTN)) {
   u64 disr = kvm_vcpu_get_disr(vcpu);

   kvm_handle_guest_serror(vcpu, disr_to_esr(disr));
  } else {
   kvm_inject_vabt(vcpu);
  }

  return;
 }

 exception_index = ARM_EXCEPTION_CODE(exception_index);

 if (exception_index == ARM_EXCEPTION_EL1_SERROR)
  kvm_handle_guest_serror(vcpu, kvm_vcpu_get_hsr(vcpu));
}
