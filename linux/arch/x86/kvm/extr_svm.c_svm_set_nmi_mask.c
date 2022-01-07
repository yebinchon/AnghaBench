
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hflags; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;
struct vcpu_svm {TYPE_2__ vcpu; } ;
struct kvm_vcpu {int dummy; } ;


 int HF_NMI_MASK ;
 int INTERCEPT_IRET ;
 int clr_intercept (struct vcpu_svm*,int ) ;
 int set_intercept (struct vcpu_svm*,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_set_nmi_mask(struct kvm_vcpu *vcpu, bool masked)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 if (masked) {
  svm->vcpu.arch.hflags |= HF_NMI_MASK;
  set_intercept(svm, INTERCEPT_IRET);
 } else {
  svm->vcpu.arch.hflags &= ~HF_NMI_MASK;
  clr_intercept(svm, INTERCEPT_IRET);
 }
}
