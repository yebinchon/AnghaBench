
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int regs_dirty; int regs_avail; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_mmu {int* pdptrs; } ;
typedef int pdpte ;
typedef unsigned long gfn_t ;


 int ARRAY_SIZE (int*) ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PFERR_USER_MASK ;
 int PFERR_WRITE_MASK ;
 int PT_PRESENT_MASK ;
 int VCPU_EXREG_PDPTR ;
 int __set_bit (int ,unsigned long*) ;
 int kvm_read_guest_page_mmu (struct kvm_vcpu*,struct kvm_mmu*,unsigned long,int*,unsigned int,int,int) ;
 int memcpy (int*,int*,int) ;
 int pdptr_rsvd_bits (struct kvm_vcpu*) ;

int load_pdptrs(struct kvm_vcpu *vcpu, struct kvm_mmu *mmu, unsigned long cr3)
{
 gfn_t pdpt_gfn = cr3 >> PAGE_SHIFT;
 unsigned offset = ((cr3 & (PAGE_SIZE-1)) >> 5) << 2;
 int i;
 int ret;
 u64 pdpte[ARRAY_SIZE(mmu->pdptrs)];

 ret = kvm_read_guest_page_mmu(vcpu, mmu, pdpt_gfn, pdpte,
          offset * sizeof(u64), sizeof(pdpte),
          PFERR_USER_MASK|PFERR_WRITE_MASK);
 if (ret < 0) {
  ret = 0;
  goto out;
 }
 for (i = 0; i < ARRAY_SIZE(pdpte); ++i) {
  if ((pdpte[i] & PT_PRESENT_MASK) &&
      (pdpte[i] & pdptr_rsvd_bits(vcpu))) {
   ret = 0;
   goto out;
  }
 }
 ret = 1;

 memcpy(mmu->pdptrs, pdpte, sizeof(mmu->pdptrs));
 __set_bit(VCPU_EXREG_PDPTR,
    (unsigned long *)&vcpu->arch.regs_avail);
 __set_bit(VCPU_EXREG_PDPTR,
    (unsigned long *)&vcpu->arch.regs_dirty);
out:

 return ret;
}
