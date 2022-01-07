
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm {int mmu_lock; } ;


 int kvm_mmu_zap_collapsible_spte ;
 int slot_handle_leaf (struct kvm*,struct kvm_memory_slot*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void kvm_mmu_zap_collapsible_sptes(struct kvm *kvm,
       const struct kvm_memory_slot *memslot)
{

 spin_lock(&kvm->mmu_lock);
 slot_handle_leaf(kvm, (struct kvm_memory_slot *)memslot,
    kvm_mmu_zap_collapsible_spte, 1);
 spin_unlock(&kvm->mmu_lock);
}
