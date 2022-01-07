
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vcpu_svm {TYPE_3__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct desc_ptr {int address; int size; } ;
struct TYPE_4__ {int base; int limit; } ;
struct TYPE_5__ {TYPE_1__ gdtr; } ;
struct TYPE_6__ {TYPE_2__ save; } ;


 int VMCB_DT ;
 int mark_dirty (TYPE_3__*,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_set_gdt(struct kvm_vcpu *vcpu, struct desc_ptr *dt)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 svm->vmcb->save.gdtr.limit = dt->size;
 svm->vmcb->save.gdtr.base = dt->address ;
 mark_dirty(svm->vmcb, VMCB_DT);
}
