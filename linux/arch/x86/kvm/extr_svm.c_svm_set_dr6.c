
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {TYPE_2__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {unsigned long dr6; } ;
struct TYPE_4__ {TYPE_1__ save; } ;


 int VMCB_DR ;
 int mark_dirty (TYPE_2__*,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_set_dr6(struct kvm_vcpu *vcpu, unsigned long value)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 svm->vmcb->save.dr6 = value;
 mark_dirty(svm->vmcb, VMCB_DR);
}
