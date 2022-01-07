
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;


 int kvmppc_core_create_memslot (struct kvm*,struct kvm_memory_slot*,unsigned long) ;

int kvm_arch_create_memslot(struct kvm *kvm, struct kvm_memory_slot *slot,
       unsigned long npages)
{
 return kvmppc_core_create_memslot(kvm, slot, npages);
}
