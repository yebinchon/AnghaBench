
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_memslots {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
struct kvm_dirty_log {int slot; } ;
struct kvm {int slots_lock; } ;
struct TYPE_2__ {int (* flush_shadow_memslot ) (struct kvm*,struct kvm_memory_slot*) ;} ;


 struct kvm_memory_slot* id_to_memslot (struct kvm_memslots*,int ) ;
 int kvm_get_dirty_log_protect (struct kvm*,struct kvm_dirty_log*,int*) ;
 struct kvm_memslots* kvm_memslots (struct kvm*) ;
 TYPE_1__* kvm_mips_callbacks ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct kvm*,struct kvm_memory_slot*) ;

int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log)
{
 struct kvm_memslots *slots;
 struct kvm_memory_slot *memslot;
 bool flush = 0;
 int r;

 mutex_lock(&kvm->slots_lock);

 r = kvm_get_dirty_log_protect(kvm, log, &flush);

 if (flush) {
  slots = kvm_memslots(kvm);
  memslot = id_to_memslot(slots, log->slot);


  kvm_mips_callbacks->flush_shadow_memslot(kvm, memslot);
 }

 mutex_unlock(&kvm->slots_lock);
 return r;
}
