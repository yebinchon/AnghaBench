
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_userspace_memory_region {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef enum kvm_mr_change { ____Placeholder_kvm_mr_change } kvm_mr_change ;



__attribute__((used)) static void kvmppc_core_commit_memory_region_pr(struct kvm *kvm,
    const struct kvm_userspace_memory_region *mem,
    const struct kvm_memory_slot *old,
    const struct kvm_memory_slot *new,
    enum kvm_mr_change change)
{
 return;
}
