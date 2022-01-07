
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_memslots {int used_slots; struct kvm_memory_slot* memslots; } ;
struct kvm_memory_slot {scalar_t__ npages; int dirty_bitmap; } ;
struct TYPE_2__ {int migration_mode; int cmma_dirty_pages; int use_cmma; } ;
struct kvm {TYPE_1__ arch; } ;


 int EINVAL ;
 int KVM_REQ_START_MIGRATION ;
 int atomic64_set (int *,unsigned long) ;
 int kvm_dirty_bitmap_bytes (struct kvm_memory_slot*) ;
 struct kvm_memslots* kvm_memslots (struct kvm*) ;
 int kvm_s390_sync_request_broadcast (struct kvm*,int ) ;
 int kvm_second_dirty_bitmap (struct kvm_memory_slot*) ;
 int memset (int ,int,int ) ;

__attribute__((used)) static int kvm_s390_vm_start_migration(struct kvm *kvm)
{
 struct kvm_memory_slot *ms;
 struct kvm_memslots *slots;
 unsigned long ram_pages = 0;
 int slotnr;


 if (kvm->arch.migration_mode)
  return 0;
 slots = kvm_memslots(kvm);
 if (!slots || !slots->used_slots)
  return -EINVAL;

 if (!kvm->arch.use_cmma) {
  kvm->arch.migration_mode = 1;
  return 0;
 }

 for (slotnr = 0; slotnr < slots->used_slots; slotnr++) {
  ms = slots->memslots + slotnr;
  if (!ms->dirty_bitmap)
   return -EINVAL;






  memset(kvm_second_dirty_bitmap(ms), 0xff, kvm_dirty_bitmap_bytes(ms));
  ram_pages += ms->npages;
 }
 atomic64_set(&kvm->arch.cmma_dirty_pages, ram_pages);
 kvm->arch.migration_mode = 1;
 kvm_s390_sync_request_broadcast(kvm, KVM_REQ_START_MIGRATION);
 return 0;
}
