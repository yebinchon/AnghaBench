
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlbe_ref {unsigned int flags; int pfn; } ;
struct kvm_book3e_206_tlb_entry {unsigned int mas2; } ;
typedef int kvm_pfn_t ;


 unsigned int E500_TLB_VALID ;
 unsigned int MAS2_ATTRIB_MASK ;
 int kvm_set_pfn_accessed (int ) ;
 int kvm_set_pfn_dirty (int ) ;
 scalar_t__ tlbe_is_writable (struct kvm_book3e_206_tlb_entry*) ;

__attribute__((used)) static inline void kvmppc_e500_ref_setup(struct tlbe_ref *ref,
      struct kvm_book3e_206_tlb_entry *gtlbe,
      kvm_pfn_t pfn, unsigned int wimg)
{
 ref->pfn = pfn;
 ref->flags = E500_TLB_VALID;


 ref->flags |= (gtlbe->mas2 & MAS2_ATTRIB_MASK) | wimg;


 kvm_set_pfn_accessed(pfn);

 if (tlbe_is_writable(gtlbe))
  kvm_set_pfn_dirty(pfn);
}
