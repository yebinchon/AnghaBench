
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {TYPE_2__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int int_state; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int SVM_INTERRUPT_SHADOW_MASK ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_set_interrupt_shadow(struct kvm_vcpu *vcpu, int mask)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 if (mask == 0)
  svm->vmcb->control.int_state &= ~SVM_INTERRUPT_SHADOW_MASK;
 else
  svm->vmcb->control.int_state |= SVM_INTERRUPT_SHADOW_MASK;

}
