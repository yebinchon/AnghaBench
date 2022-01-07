
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int int_state; } ;
struct vmcb {TYPE_1__ control; } ;
struct TYPE_5__ {int hflags; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct vcpu_svm {TYPE_3__ vcpu; struct vmcb* vmcb; } ;
struct kvm_vcpu {int dummy; } ;


 int HF_NMI_MASK ;
 int SVM_INTERRUPT_SHADOW_MASK ;
 scalar_t__ gif_set (struct vcpu_svm*) ;
 scalar_t__ nested_svm_nmi (struct vcpu_svm*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static int svm_nmi_allowed(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 struct vmcb *vmcb = svm->vmcb;
 int ret;
 ret = !(vmcb->control.int_state & SVM_INTERRUPT_SHADOW_MASK) &&
       !(svm->vcpu.arch.hflags & HF_NMI_MASK);
 ret = ret && gif_set(svm) && nested_svm_nmi(svm);

 return ret;
}
