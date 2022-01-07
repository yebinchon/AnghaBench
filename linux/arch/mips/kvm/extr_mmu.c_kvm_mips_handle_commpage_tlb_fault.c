
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kseg0_commpage; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int pte_t ;
typedef int kvm_pfn_t ;


 int PAGE_SHARED ;
 int PFN_DOWN (int ) ;
 int kvm_err (char*,unsigned long) ;
 int kvm_mips_host_tlb_inv (struct kvm_vcpu*,unsigned long,int,int) ;
 int * kvm_trap_emul_pte_for_gva (struct kvm_vcpu*,unsigned long) ;
 int pfn_pte (int ,int ) ;
 int pte_mkdirty (int ) ;
 int pte_mkyoung (int ) ;
 int virt_to_phys (int ) ;

int kvm_mips_handle_commpage_tlb_fault(unsigned long badvaddr,
           struct kvm_vcpu *vcpu)
{
 kvm_pfn_t pfn;
 pte_t *ptep;

 ptep = kvm_trap_emul_pte_for_gva(vcpu, badvaddr);
 if (!ptep) {
  kvm_err("No ptep for commpage %lx\n", badvaddr);
  return -1;
 }

 pfn = PFN_DOWN(virt_to_phys(vcpu->arch.kseg0_commpage));

 *ptep = pte_mkyoung(pte_mkdirty(pfn_pte(pfn, PAGE_SHARED)));


 kvm_mips_host_tlb_inv(vcpu, badvaddr, 0, 1);
 return 0;
}
