
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pc; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm* kvm; } ;
struct kvm_mips_tlb {long* tlb_lo; } ;
struct kvm {int mmu_lock; } ;
typedef int pte_t ;


 long ENTRYLO_V ;
 unsigned long KVM_GUEST_COMMPAGE_ADDR ;
 int KVM_GUEST_KERNEL_MODE (struct kvm_vcpu*) ;
 int PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 size_t TLB_LO_IDX (struct kvm_mips_tlb,unsigned long) ;
 unsigned long VPN2_MASK ;
 int __pgprot (int ) ;
 int kvm_debug (char*,int ,long,long) ;
 int kvm_err (char*,unsigned long) ;
 int kvm_mips_gpa_pte_to_gva_mapped (int ,long) ;
 int kvm_mips_host_tlb_inv (struct kvm_vcpu*,unsigned long,int,int) ;
 scalar_t__ kvm_mips_map_page (struct kvm_vcpu*,int ,int,int *,int *) ;
 int * kvm_mips_pte_for_gpa (struct kvm*,int *,int ) ;
 int * kvm_trap_emul_pte_for_gva (struct kvm_vcpu*,unsigned long) ;
 int mips3_tlbpfn_to_paddr (long) ;
 int pfn_pte (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int kvm_mips_handle_mapped_seg_tlb_fault(struct kvm_vcpu *vcpu,
      struct kvm_mips_tlb *tlb,
      unsigned long gva,
      bool write_fault)
{
 struct kvm *kvm = vcpu->kvm;
 long tlb_lo[2];
 pte_t pte_gpa[2], *ptep_buddy, *ptep_gva;
 unsigned int idx = TLB_LO_IDX(*tlb, gva);
 bool kernel = KVM_GUEST_KERNEL_MODE(vcpu);

 tlb_lo[0] = tlb->tlb_lo[0];
 tlb_lo[1] = tlb->tlb_lo[1];





 if (!((gva ^ KVM_GUEST_COMMPAGE_ADDR) & VPN2_MASK & (PAGE_MASK << 1)))
  tlb_lo[TLB_LO_IDX(*tlb, KVM_GUEST_COMMPAGE_ADDR)] = 0;


 if (kvm_mips_map_page(vcpu, mips3_tlbpfn_to_paddr(tlb_lo[idx]),
         write_fault, &pte_gpa[idx], ((void*)0)) < 0)
  return -1;


 pte_gpa[!idx] = pfn_pte(0, __pgprot(0));
 if (tlb_lo[!idx] & ENTRYLO_V) {
  spin_lock(&kvm->mmu_lock);
  ptep_buddy = kvm_mips_pte_for_gpa(kvm, ((void*)0),
     mips3_tlbpfn_to_paddr(tlb_lo[!idx]));
  if (ptep_buddy)
   pte_gpa[!idx] = *ptep_buddy;
  spin_unlock(&kvm->mmu_lock);
 }


 ptep_gva = kvm_trap_emul_pte_for_gva(vcpu, gva & ~PAGE_SIZE);
 if (!ptep_gva) {
  kvm_err("No ptep for gva %lx\n", gva);
  return -1;
 }


 ptep_gva[0] = kvm_mips_gpa_pte_to_gva_mapped(pte_gpa[0], tlb_lo[0]);
 ptep_gva[1] = kvm_mips_gpa_pte_to_gva_mapped(pte_gpa[1], tlb_lo[1]);


 kvm_mips_host_tlb_inv(vcpu, gva, !kernel, kernel);

 kvm_debug("@ %#lx tlb_lo0: 0x%08lx tlb_lo1: 0x%08lx\n", vcpu->arch.pc,
    tlb->tlb_lo[0], tlb->tlb_lo[1]);

 return 0;
}
