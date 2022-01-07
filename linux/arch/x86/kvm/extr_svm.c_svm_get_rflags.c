
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {unsigned long nmi_singlestep_guest_rflags; scalar_t__ nmi_singlestep; TYPE_2__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {unsigned long rflags; } ;
struct TYPE_4__ {TYPE_1__ save; } ;


 unsigned long X86_EFLAGS_RF ;
 unsigned long X86_EFLAGS_TF ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static unsigned long svm_get_rflags(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 unsigned long rflags = svm->vmcb->save.rflags;

 if (svm->nmi_singlestep) {

  if (!(svm->nmi_singlestep_guest_rflags & X86_EFLAGS_TF))
   rflags &= ~X86_EFLAGS_TF;
  if (!(svm->nmi_singlestep_guest_rflags & X86_EFLAGS_RF))
   rflags &= ~X86_EFLAGS_RF;
 }
 return rflags;
}
