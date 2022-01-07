
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int flags; scalar_t__ dirty_bitmap; } ;


 int KVM_MEMSLOT_INVALID ;

__attribute__((used)) static inline bool memslot_valid_for_gpte(struct kvm_memory_slot *slot,
       bool no_dirty_log)
{
 if (!slot || slot->flags & KVM_MEMSLOT_INVALID)
  return 0;
 if (no_dirty_log && slot->dirty_bitmap)
  return 0;

 return 1;
}
