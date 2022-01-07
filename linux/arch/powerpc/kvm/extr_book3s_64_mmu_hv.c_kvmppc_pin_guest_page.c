
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kvm_memory_slot {int flags; } ;
struct kvm {int srcu; } ;


 int FOLL_WRITE ;
 int KVM_MEMSLOT_INVALID ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int get_user_pages_fast (unsigned long,int,int ,struct page**) ;
 unsigned long gfn_to_hva_memslot (struct kvm_memory_slot*,unsigned long) ;
 struct kvm_memory_slot* gfn_to_memslot (struct kvm*,unsigned long) ;
 void* page_address (struct page*) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

void *kvmppc_pin_guest_page(struct kvm *kvm, unsigned long gpa,
       unsigned long *nb_ret)
{
 struct kvm_memory_slot *memslot;
 unsigned long gfn = gpa >> PAGE_SHIFT;
 struct page *page, *pages[1];
 int npages;
 unsigned long hva, offset;
 int srcu_idx;

 srcu_idx = srcu_read_lock(&kvm->srcu);
 memslot = gfn_to_memslot(kvm, gfn);
 if (!memslot || (memslot->flags & KVM_MEMSLOT_INVALID))
  goto err;
 hva = gfn_to_hva_memslot(memslot, gfn);
 npages = get_user_pages_fast(hva, 1, FOLL_WRITE, pages);
 if (npages < 1)
  goto err;
 page = pages[0];
 srcu_read_unlock(&kvm->srcu, srcu_idx);

 offset = gpa & (PAGE_SIZE - 1);
 if (nb_ret)
  *nb_ret = PAGE_SIZE - offset;
 return page_address(page) + offset;

 err:
 srcu_read_unlock(&kvm->srcu, srcu_idx);
 return ((void*)0);
}
