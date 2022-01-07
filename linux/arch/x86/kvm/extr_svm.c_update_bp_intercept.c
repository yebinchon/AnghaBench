
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int dummy; } ;
struct kvm_vcpu {int guest_debug; } ;


 int BP_VECTOR ;
 int KVM_GUESTDBG_ENABLE ;
 int KVM_GUESTDBG_USE_SW_BP ;
 int clr_exception_intercept (struct vcpu_svm*,int ) ;
 int set_exception_intercept (struct vcpu_svm*,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void update_bp_intercept(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 clr_exception_intercept(svm, BP_VECTOR);

 if (vcpu->guest_debug & KVM_GUESTDBG_ENABLE) {
  if (vcpu->guest_debug & KVM_GUESTDBG_USE_SW_BP)
   set_exception_intercept(svm, BP_VECTOR);
 } else
  vcpu->guest_debug = 0;
}
