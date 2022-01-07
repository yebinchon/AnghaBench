
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_memory_slot {int dummy; } ;
struct TYPE_4__ {TYPE_1__* kvm_ops; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_3__ {int (* free_memslot ) (struct kvm_memory_slot*,struct kvm_memory_slot*) ;} ;


 int stub1 (struct kvm_memory_slot*,struct kvm_memory_slot*) ;

void kvmppc_core_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
         struct kvm_memory_slot *dont)
{
 kvm->arch.kvm_ops->free_memslot(free, dont);
}
