
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_userspace_memory_region {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef enum kvm_mr_change { ____Placeholder_kvm_mr_change } kvm_mr_change ;


 int kvmppc_core_commit_memory_region (struct kvm*,struct kvm_userspace_memory_region const*,struct kvm_memory_slot const*,struct kvm_memory_slot const*,int) ;

void kvm_arch_commit_memory_region(struct kvm *kvm,
       const struct kvm_userspace_memory_region *mem,
       const struct kvm_memory_slot *old,
       const struct kvm_memory_slot *new,
       enum kvm_mr_change change)
{
 kvmppc_core_commit_memory_region(kvm, mem, old, new, change);
}
