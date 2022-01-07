
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_memory_slot {scalar_t__ dirty_bitmap; } ;
struct TYPE_4__ {int num_1G_pages; int num_2M_pages; } ;
struct TYPE_3__ {unsigned int lpid; } ;
struct kvm {TYPE_2__ stat; TYPE_1__ arch; } ;
typedef int pte_t ;


 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 unsigned int PMD_SHIFT ;
 unsigned long PTE_RPN_MASK ;
 unsigned int PUD_SHIFT ;
 unsigned long _PAGE_DIRTY ;
 struct kvm_memory_slot* gfn_to_memslot (struct kvm*,unsigned long) ;
 int kvmhv_remove_nest_rmap_range (struct kvm*,struct kvm_memory_slot const*,unsigned long,unsigned long,unsigned long) ;
 int kvmppc_radix_tlbie_page (struct kvm*,unsigned long,unsigned int,unsigned int) ;
 unsigned long kvmppc_radix_update_pte (struct kvm*,int *,unsigned long,int ,unsigned long,unsigned int) ;
 int kvmppc_update_dirty_map (struct kvm_memory_slot const*,unsigned long,unsigned long) ;

void kvmppc_unmap_pte(struct kvm *kvm, pte_t *pte, unsigned long gpa,
        unsigned int shift,
        const struct kvm_memory_slot *memslot,
        unsigned int lpid)

{
 unsigned long old;
 unsigned long gfn = gpa >> PAGE_SHIFT;
 unsigned long page_size = PAGE_SIZE;
 unsigned long hpa;

 old = kvmppc_radix_update_pte(kvm, pte, ~0UL, 0, gpa, shift);
 kvmppc_radix_tlbie_page(kvm, gpa, shift, lpid);


 if (lpid != kvm->arch.lpid)
  return;

 if (!memslot) {
  memslot = gfn_to_memslot(kvm, gfn);
  if (!memslot)
   return;
 }
 if (shift) {
  page_size = 1ul << shift;
  if (shift == PMD_SHIFT)
   kvm->stat.num_2M_pages--;
  else if (shift == PUD_SHIFT)
   kvm->stat.num_1G_pages--;
 }

 gpa &= ~(page_size - 1);
 hpa = old & PTE_RPN_MASK;
 kvmhv_remove_nest_rmap_range(kvm, memslot, gpa, hpa, page_size);

 if ((old & _PAGE_DIRTY) && memslot->dirty_bitmap)
  kvmppc_update_dirty_map(memslot, gfn, page_size);
}
