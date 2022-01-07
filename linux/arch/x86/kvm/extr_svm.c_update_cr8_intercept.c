
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int INTERCEPT_CR8_WRITE ;
 int clr_cr_intercept (struct vcpu_svm*,int ) ;
 scalar_t__ kvm_vcpu_apicv_active (struct kvm_vcpu*) ;
 int set_cr_intercept (struct vcpu_svm*,int ) ;
 scalar_t__ svm_nested_virtualize_tpr (struct kvm_vcpu*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void update_cr8_intercept(struct kvm_vcpu *vcpu, int tpr, int irr)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 if (svm_nested_virtualize_tpr(vcpu) ||
     kvm_vcpu_apicv_active(vcpu))
  return;

 clr_cr_intercept(svm, INTERCEPT_CR8_WRITE);

 if (irr == -1)
  return;

 if (tpr >= irr)
  set_cr_intercept(svm, INTERCEPT_CR8_WRITE);
}
