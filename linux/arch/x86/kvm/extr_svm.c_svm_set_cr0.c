
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vcpu_svm {TYPE_3__* vmcb; } ;
struct TYPE_4__ {int efer; unsigned long cr0; } ;
struct kvm_vcpu {int kvm; TYPE_1__ arch; } ;
struct TYPE_5__ {int efer; unsigned long cr0; } ;
struct TYPE_6__ {TYPE_2__ save; } ;


 int EFER_LMA ;
 int EFER_LME ;
 int KVM_X86_QUIRK_CD_NW_CLEARED ;
 int VMCB_CR ;
 unsigned long X86_CR0_CD ;
 unsigned long X86_CR0_NW ;
 unsigned long X86_CR0_PG ;
 unsigned long X86_CR0_WP ;
 scalar_t__ is_paging (struct kvm_vcpu*) ;
 scalar_t__ kvm_check_has_quirk (int ,int ) ;
 int mark_dirty (TYPE_3__*,int ) ;
 int npt_enabled ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;
 int update_cr0_intercept (struct vcpu_svm*) ;

__attribute__((used)) static void svm_set_cr0(struct kvm_vcpu *vcpu, unsigned long cr0)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 vcpu->arch.cr0 = cr0;

 if (!npt_enabled)
  cr0 |= X86_CR0_PG | X86_CR0_WP;






 if (kvm_check_has_quirk(vcpu->kvm, KVM_X86_QUIRK_CD_NW_CLEARED))
  cr0 &= ~(X86_CR0_CD | X86_CR0_NW);
 svm->vmcb->save.cr0 = cr0;
 mark_dirty(svm->vmcb, VMCB_CR);
 update_cr0_intercept(svm);
}
