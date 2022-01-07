
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regs_dirty; struct kvm_mmu* walk_mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_mmu {int * pdptrs; } ;


 int GUEST_PDPTR0 ;
 int GUEST_PDPTR1 ;
 int GUEST_PDPTR2 ;
 int GUEST_PDPTR3 ;
 int VCPU_EXREG_PDPTR ;
 scalar_t__ is_pae_paging (struct kvm_vcpu*) ;
 int test_bit (int ,unsigned long*) ;
 int vmcs_write64 (int ,int ) ;

__attribute__((used)) static void ept_load_pdptrs(struct kvm_vcpu *vcpu)
{
 struct kvm_mmu *mmu = vcpu->arch.walk_mmu;

 if (!test_bit(VCPU_EXREG_PDPTR,
        (unsigned long *)&vcpu->arch.regs_dirty))
  return;

 if (is_pae_paging(vcpu)) {
  vmcs_write64(GUEST_PDPTR0, mmu->pdptrs[0]);
  vmcs_write64(GUEST_PDPTR1, mmu->pdptrs[1]);
  vmcs_write64(GUEST_PDPTR2, mmu->pdptrs[2]);
  vmcs_write64(GUEST_PDPTR3, mmu->pdptrs[3]);
 }
}
