
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned long cr4; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_6__ {unsigned long cr4; } ;
struct TYPE_8__ {TYPE_2__ save; } ;
struct TYPE_7__ {TYPE_4__* vmcb; } ;


 int VMCB_CR ;
 unsigned long X86_CR4_MCE ;
 unsigned long X86_CR4_PAE ;
 unsigned long X86_CR4_PGE ;
 unsigned long X86_CR4_VMXE ;
 unsigned long cr4_read_shadow () ;
 int mark_dirty (TYPE_4__*,int ) ;
 scalar_t__ npt_enabled ;
 int svm_flush_tlb (struct kvm_vcpu*,int) ;
 TYPE_3__* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static int svm_set_cr4(struct kvm_vcpu *vcpu, unsigned long cr4)
{
 unsigned long host_cr4_mce = cr4_read_shadow() & X86_CR4_MCE;
 unsigned long old_cr4 = to_svm(vcpu)->vmcb->save.cr4;

 if (cr4 & X86_CR4_VMXE)
  return 1;

 if (npt_enabled && ((old_cr4 ^ cr4) & X86_CR4_PGE))
  svm_flush_tlb(vcpu, 1);

 vcpu->arch.cr4 = cr4;
 if (!npt_enabled)
  cr4 |= X86_CR4_PAE;
 cr4 |= host_cr4_mce;
 to_svm(vcpu)->vmcb->save.cr4 = cr4;
 mark_dirty(to_svm(vcpu)->vmcb, VMCB_CR);
 return 0;
}
