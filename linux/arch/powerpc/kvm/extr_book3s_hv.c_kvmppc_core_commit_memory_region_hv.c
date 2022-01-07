
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_userspace_memory_region {unsigned long memory_size; } ;
struct kvm_memory_slot {int flags; } ;
struct TYPE_2__ {int mmio_update; } ;
struct kvm {TYPE_1__ arch; } ;
typedef enum kvm_mr_change { ____Placeholder_kvm_mr_change } kvm_mr_change ;


 int KVM_MEM_LOG_DIRTY_PAGES ;
 int KVM_MR_FLAGS_ONLY ;
 unsigned long PAGE_SHIFT ;
 int atomic64_inc (int *) ;
 scalar_t__ kvm_is_radix (struct kvm*) ;
 int kvmppc_radix_flush_memslot (struct kvm*,struct kvm_memory_slot const*) ;

__attribute__((used)) static void kvmppc_core_commit_memory_region_hv(struct kvm *kvm,
    const struct kvm_userspace_memory_region *mem,
    const struct kvm_memory_slot *old,
    const struct kvm_memory_slot *new,
    enum kvm_mr_change change)
{
 unsigned long npages = mem->memory_size >> PAGE_SHIFT;







 if (npages)
  atomic64_inc(&kvm->arch.mmio_update);
 if (change == KVM_MR_FLAGS_ONLY && kvm_is_radix(kvm) &&
     ((new->flags ^ old->flags) & KVM_MEM_LOG_DIRTY_PAGES))
  kvmppc_radix_flush_memslot(kvm, old);
}
