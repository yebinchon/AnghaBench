
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_userspace_memory_region {int dummy; } ;
struct kvm_memory_slot {int flags; } ;
struct TYPE_2__ {int n_requested_mmu_pages; } ;
struct kvm {TYPE_1__ arch; } ;
typedef enum kvm_mr_change { ____Placeholder_kvm_mr_change } kvm_mr_change ;


 int KVM_MEM_LOG_DIRTY_PAGES ;
 int KVM_MR_DELETE ;
 int KVM_MR_FLAGS_ONLY ;
 int kvm_mmu_calculate_default_mmu_pages (struct kvm*) ;
 int kvm_mmu_change_mmu_pages (struct kvm*,int ) ;
 int kvm_mmu_slot_apply_flags (struct kvm*,struct kvm_memory_slot*) ;
 int kvm_mmu_zap_collapsible_sptes (struct kvm*,struct kvm_memory_slot const*) ;

void kvm_arch_commit_memory_region(struct kvm *kvm,
    const struct kvm_userspace_memory_region *mem,
    const struct kvm_memory_slot *old,
    const struct kvm_memory_slot *new,
    enum kvm_mr_change change)
{
 if (!kvm->arch.n_requested_mmu_pages)
  kvm_mmu_change_mmu_pages(kvm,
    kvm_mmu_calculate_default_mmu_pages(kvm));
 if (change == KVM_MR_FLAGS_ONLY &&
  (old->flags & KVM_MEM_LOG_DIRTY_PAGES) &&
  !(new->flags & KVM_MEM_LOG_DIRTY_PAGES))
  kvm_mmu_zap_collapsible_sptes(kvm, new);
 if (change != KVM_MR_DELETE)
  kvm_mmu_slot_apply_flags(kvm, (struct kvm_memory_slot *) new);
}
