
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_userspace_memory_region {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;



int kvmppc_core_prepare_memory_region(struct kvm *kvm,
          struct kvm_memory_slot *memslot,
          const struct kvm_userspace_memory_region *mem)
{
 return 0;
}
