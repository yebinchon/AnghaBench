
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vcpu_svm {TYPE_3__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_5__ {int cr3; } ;
struct TYPE_4__ {int nested_cr3; } ;
struct TYPE_6__ {TYPE_2__ save; TYPE_1__ control; } ;


 int VMCB_CR ;
 int VMCB_NPT ;
 int __sme_set (unsigned long) ;
 int kvm_read_cr3 (struct kvm_vcpu*) ;
 int mark_dirty (TYPE_3__*,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void set_tdp_cr3(struct kvm_vcpu *vcpu, unsigned long root)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 svm->vmcb->control.nested_cr3 = __sme_set(root);
 mark_dirty(svm->vmcb, VMCB_NPT);


 svm->vmcb->save.cr3 = kvm_read_cr3(vcpu);
 mark_dirty(svm->vmcb, VMCB_CR);
}
