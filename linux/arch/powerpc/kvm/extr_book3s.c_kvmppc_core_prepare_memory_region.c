
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
struct TYPE_3__ {int (* prepare_memory_region ) (struct kvm*,struct kvm_memory_slot*,struct kvm_userspace_memory_region const*) ;} ;


 int stub1 (struct kvm*,struct kvm_memory_slot*,struct kvm_userspace_memory_region const*) ;

int kvmppc_core_prepare_memory_region(struct kvm *kvm,
    struct kvm_memory_slot *memslot,
    const struct kvm_userspace_memory_region *mem)
{
 return kvm->arch.kvm_ops->prepare_memory_region(kvm, memslot, mem);
}
