
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;


 int kvmppc_core_flush_memslot (struct kvm*,struct kvm_memory_slot*) ;

void kvm_arch_flush_shadow_memslot(struct kvm *kvm,
       struct kvm_memory_slot *slot)
{
 kvmppc_core_flush_memslot(kvm, slot);
}
