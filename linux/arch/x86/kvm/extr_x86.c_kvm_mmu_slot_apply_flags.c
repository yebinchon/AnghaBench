
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_memory_slot {int flags; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {int (* slot_disable_log_dirty ) (struct kvm*,struct kvm_memory_slot*) ;int (* slot_enable_log_dirty ) (struct kvm*,struct kvm_memory_slot*) ;} ;


 int KVM_MEM_LOG_DIRTY_PAGES ;
 int KVM_MEM_READONLY ;
 int kvm_mmu_slot_remove_write_access (struct kvm*,struct kvm_memory_slot*) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm*,struct kvm_memory_slot*) ;
 int stub2 (struct kvm*,struct kvm_memory_slot*) ;

__attribute__((used)) static void kvm_mmu_slot_apply_flags(struct kvm *kvm,
         struct kvm_memory_slot *new)
{

 if (new->flags & KVM_MEM_READONLY) {
  kvm_mmu_slot_remove_write_access(kvm, new);
  return;
 }
 if (new->flags & KVM_MEM_LOG_DIRTY_PAGES) {
  if (kvm_x86_ops->slot_enable_log_dirty)
   kvm_x86_ops->slot_enable_log_dirty(kvm, new);
  else
   kvm_mmu_slot_remove_write_access(kvm, new);
 } else {
  if (kvm_x86_ops->slot_disable_log_dirty)
   kvm_x86_ops->slot_disable_log_dirty(kvm, new);
 }
}
