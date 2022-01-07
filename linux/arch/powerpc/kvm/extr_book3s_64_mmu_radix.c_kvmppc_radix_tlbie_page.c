
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int H_TLBIE_P1_ENC (int ,int ,int) ;
 int H_TLB_INVALIDATE ;
 unsigned int PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 unsigned long PPC_BITLSHIFT (int) ;
 int kvmhv_on_pseries () ;
 unsigned long mmu_get_ap (int) ;
 long plpar_hcall_norets (int ,int ,unsigned int,unsigned long) ;
 int pr_err (char*,long) ;
 int radix__flush_tlb_lpid_page (unsigned int,unsigned long,unsigned long) ;
 int shift_to_mmu_psize (unsigned int) ;

void kvmppc_radix_tlbie_page(struct kvm *kvm, unsigned long addr,
        unsigned int pshift, unsigned int lpid)
{
 unsigned long psize = PAGE_SIZE;
 int psi;
 long rc;
 unsigned long rb;

 if (pshift)
  psize = 1UL << pshift;
 else
  pshift = PAGE_SHIFT;

 addr &= ~(psize - 1);

 if (!kvmhv_on_pseries()) {
  radix__flush_tlb_lpid_page(lpid, addr, psize);
  return;
 }

 psi = shift_to_mmu_psize(pshift);
 rb = addr | (mmu_get_ap(psi) << PPC_BITLSHIFT(58));
 rc = plpar_hcall_norets(H_TLB_INVALIDATE, H_TLBIE_P1_ENC(0, 0, 1),
    lpid, rb);
 if (rc)
  pr_err("KVM: TLB page invalidation hcall failed, rc=%ld\n", rc);
}
