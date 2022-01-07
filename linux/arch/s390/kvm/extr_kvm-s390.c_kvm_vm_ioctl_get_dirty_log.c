
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memslots {int dummy; } ;
struct kvm_memory_slot {int dirty_bitmap; } ;
struct kvm_dirty_log {int slot; } ;
struct kvm {int slots_lock; } ;


 int EINVAL ;
 int ENOENT ;
 int KVM_USER_MEM_SLOTS ;
 struct kvm_memory_slot* id_to_memslot (struct kvm_memslots*,int ) ;
 unsigned long kvm_dirty_bitmap_bytes (struct kvm_memory_slot*) ;
 int kvm_get_dirty_log (struct kvm*,struct kvm_dirty_log*,int*) ;
 scalar_t__ kvm_is_ucontrol (struct kvm*) ;
 struct kvm_memslots* kvm_memslots (struct kvm*) ;
 int kvm_s390_sync_dirty_log (struct kvm*,struct kvm_memory_slot*) ;
 int memset (int ,int ,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm,
          struct kvm_dirty_log *log)
{
 int r;
 unsigned long n;
 struct kvm_memslots *slots;
 struct kvm_memory_slot *memslot;
 int is_dirty = 0;

 if (kvm_is_ucontrol(kvm))
  return -EINVAL;

 mutex_lock(&kvm->slots_lock);

 r = -EINVAL;
 if (log->slot >= KVM_USER_MEM_SLOTS)
  goto out;

 slots = kvm_memslots(kvm);
 memslot = id_to_memslot(slots, log->slot);
 r = -ENOENT;
 if (!memslot->dirty_bitmap)
  goto out;

 kvm_s390_sync_dirty_log(kvm, memslot);
 r = kvm_get_dirty_log(kvm, log, &is_dirty);
 if (r)
  goto out;


 if (is_dirty) {
  n = kvm_dirty_bitmap_bytes(memslot);
  memset(memslot->dirty_bitmap, 0, n);
 }
 r = 0;
out:
 mutex_unlock(&kvm->slots_lock);
 return r;
}
