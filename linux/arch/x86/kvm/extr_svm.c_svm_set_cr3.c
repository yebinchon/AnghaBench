
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {TYPE_2__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int cr3; } ;
struct TYPE_4__ {TYPE_1__ save; } ;


 int VMCB_CR ;
 int __sme_set (unsigned long) ;
 int mark_dirty (TYPE_2__*,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_set_cr3(struct kvm_vcpu *vcpu, unsigned long root)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 svm->vmcb->save.cr3 = __sme_set(root);
 mark_dirty(svm->vmcb, VMCB_CR);
}
