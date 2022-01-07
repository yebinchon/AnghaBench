
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int npages; int base_gfn; } ;
struct kvm {int slots_lock; int mmu_lock; } ;


 int kvm_flush_remote_tlbs_with_address (struct kvm*,int ,int ) ;
 int lockdep_assert_held (int *) ;
 int slot_handle_large_level (struct kvm*,struct kvm_memory_slot*,int ,int) ;
 int slot_rmap_write_protect ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void kvm_mmu_slot_largepage_remove_write_access(struct kvm *kvm,
     struct kvm_memory_slot *memslot)
{
 bool flush;

 spin_lock(&kvm->mmu_lock);
 flush = slot_handle_large_level(kvm, memslot, slot_rmap_write_protect,
     0);
 spin_unlock(&kvm->mmu_lock);


 lockdep_assert_held(&kvm->slots_lock);

 if (flush)
  kvm_flush_remote_tlbs_with_address(kvm, memslot->base_gfn,
    memslot->npages);
}
