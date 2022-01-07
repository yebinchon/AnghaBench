
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_userspace_memory_region {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
struct TYPE_4__ {TYPE_1__* kvm_ops; } ;
struct kvm {TYPE_2__ arch; } ;
typedef enum kvm_mr_change { ____Placeholder_kvm_mr_change } kvm_mr_change ;
struct TYPE_3__ {int (* commit_memory_region ) (struct kvm*,struct kvm_userspace_memory_region const*,struct kvm_memory_slot const*,struct kvm_memory_slot const*,int) ;} ;


 int stub1 (struct kvm*,struct kvm_userspace_memory_region const*,struct kvm_memory_slot const*,struct kvm_memory_slot const*,int) ;

void kvmppc_core_commit_memory_region(struct kvm *kvm,
    const struct kvm_userspace_memory_region *mem,
    const struct kvm_memory_slot *old,
    const struct kvm_memory_slot *new,
    enum kvm_mr_change change)
{
 kvm->arch.kvm_ops->commit_memory_region(kvm, mem, old, new, change);
}
