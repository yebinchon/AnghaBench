
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_memory_slot {scalar_t__ npages; scalar_t__ base_gfn; } ;
struct kvm {int mmu_lock; } ;
struct TYPE_2__ {int (* flush_shadow_memslot ) (struct kvm*,struct kvm_memory_slot*) ;} ;


 TYPE_1__* kvm_mips_callbacks ;
 int kvm_mips_flush_gpa_pt (struct kvm*,scalar_t__,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct kvm*,struct kvm_memory_slot*) ;

void kvm_arch_flush_shadow_memslot(struct kvm *kvm,
       struct kvm_memory_slot *slot)
{





 spin_lock(&kvm->mmu_lock);

 kvm_mips_flush_gpa_pt(kvm, slot->base_gfn,
         slot->base_gfn + slot->npages - 1);

 kvm_mips_callbacks->flush_shadow_memslot(kvm, slot);
 spin_unlock(&kvm->mmu_lock);
}
