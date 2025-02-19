
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_rmap_head {int dummy; } ;
struct TYPE_2__ {int level; } ;
struct kvm_mmu_page {TYPE_1__ role; } ;
struct kvm_memslots {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef int gfn_t ;


 struct kvm_memory_slot* __gfn_to_memslot (struct kvm_memslots*,int ) ;
 struct kvm_rmap_head* __gfn_to_rmap (int ,int ,struct kvm_memory_slot*) ;
 struct kvm_memslots* kvm_memslots_for_spte_role (struct kvm*,TYPE_1__) ;

__attribute__((used)) static struct kvm_rmap_head *gfn_to_rmap(struct kvm *kvm, gfn_t gfn,
      struct kvm_mmu_page *sp)
{
 struct kvm_memslots *slots;
 struct kvm_memory_slot *slot;

 slots = kvm_memslots_for_spte_role(kvm, sp->role);
 slot = __gfn_to_memslot(slots, gfn);
 return __gfn_to_rmap(gfn, sp->role.level, slot);
}
