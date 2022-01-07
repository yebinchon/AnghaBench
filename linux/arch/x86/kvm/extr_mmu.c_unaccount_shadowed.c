
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ level; } ;
struct kvm_mmu_page {TYPE_2__ role; int gfn; } ;
struct kvm_memslots {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
struct TYPE_3__ {int indirect_shadow_pages; } ;
struct kvm {TYPE_1__ arch; } ;
typedef int gfn_t ;


 int KVM_PAGE_TRACK_WRITE ;
 scalar_t__ PT_PAGE_TABLE_LEVEL ;
 struct kvm_memory_slot* __gfn_to_memslot (struct kvm_memslots*,int ) ;
 struct kvm_memslots* kvm_memslots_for_spte_role (struct kvm*,TYPE_2__) ;
 int kvm_mmu_gfn_allow_lpage (struct kvm_memory_slot*,int ) ;
 void kvm_slot_page_track_remove_page (struct kvm*,struct kvm_memory_slot*,int ,int ) ;

__attribute__((used)) static void unaccount_shadowed(struct kvm *kvm, struct kvm_mmu_page *sp)
{
 struct kvm_memslots *slots;
 struct kvm_memory_slot *slot;
 gfn_t gfn;

 kvm->arch.indirect_shadow_pages--;
 gfn = sp->gfn;
 slots = kvm_memslots_for_spte_role(kvm, sp->role);
 slot = __gfn_to_memslot(slots, gfn);
 if (sp->role.level > PT_PAGE_TABLE_LEVEL)
  return kvm_slot_page_track_remove_page(kvm, slot, gfn,
             KVM_PAGE_TRACK_WRITE);

 kvm_mmu_gfn_allow_lpage(slot, gfn);
}
