
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kvm_memory_slot {scalar_t__ dirty_bitmap; scalar_t__ base_gfn; } ;
struct kvm {int srcu; } ;


 unsigned long PAGE_SHIFT ;
 struct kvm_memory_slot* gfn_to_memslot (struct kvm*,unsigned long) ;
 int put_page (struct page*) ;
 int set_bit_le (scalar_t__,scalar_t__) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 struct page* virt_to_page (void*) ;

void kvmppc_unpin_guest_page(struct kvm *kvm, void *va, unsigned long gpa,
        bool dirty)
{
 struct page *page = virt_to_page(va);
 struct kvm_memory_slot *memslot;
 unsigned long gfn;
 int srcu_idx;

 put_page(page);

 if (!dirty)
  return;


 gfn = gpa >> PAGE_SHIFT;
 srcu_idx = srcu_read_lock(&kvm->srcu);
 memslot = gfn_to_memslot(kvm, gfn);
 if (memslot && memslot->dirty_bitmap)
  set_bit_le(gfn - memslot->base_gfn, memslot->dirty_bitmap);
 srcu_read_unlock(&kvm->srcu, srcu_idx);
}
