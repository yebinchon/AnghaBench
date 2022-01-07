
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_memory_slot {int dummy; } ;
struct TYPE_4__ {TYPE_1__* kvm_ops; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_3__ {int (* create_memslot ) (struct kvm_memory_slot*,unsigned long) ;} ;


 int stub1 (struct kvm_memory_slot*,unsigned long) ;

int kvmppc_core_create_memslot(struct kvm *kvm, struct kvm_memory_slot *slot,
          unsigned long npages)
{
 return kvm->arch.kvm_ops->create_memslot(slot, npages);
}
