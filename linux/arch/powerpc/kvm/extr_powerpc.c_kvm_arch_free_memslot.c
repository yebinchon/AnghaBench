
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;


 int kvmppc_core_free_memslot (struct kvm*,struct kvm_memory_slot*,struct kvm_memory_slot*) ;

void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
      struct kvm_memory_slot *dont)
{
 kvmppc_core_free_memslot(kvm, free, dont);
}
