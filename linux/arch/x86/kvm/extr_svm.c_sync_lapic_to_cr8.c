
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct vcpu_svm {TYPE_2__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int int_ctl; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int V_TPR_MASK ;
 int kvm_get_cr8 (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_apicv_active (struct kvm_vcpu*) ;
 scalar_t__ svm_nested_virtualize_tpr (struct kvm_vcpu*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static inline void sync_lapic_to_cr8(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 u64 cr8;

 if (svm_nested_virtualize_tpr(vcpu) ||
     kvm_vcpu_apicv_active(vcpu))
  return;

 cr8 = kvm_get_cr8(vcpu);
 svm->vmcb->control.int_ctl &= ~V_TPR_MASK;
 svm->vmcb->control.int_ctl |= cr8 & V_TPR_MASK;
}
