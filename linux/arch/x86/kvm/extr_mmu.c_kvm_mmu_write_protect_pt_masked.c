
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_rmap_head {int dummy; } ;
struct kvm_memory_slot {scalar_t__ base_gfn; } ;
struct kvm {int dummy; } ;
typedef scalar_t__ gfn_t ;


 int PT_PAGE_TABLE_LEVEL ;
 scalar_t__ __ffs (unsigned long) ;
 struct kvm_rmap_head* __gfn_to_rmap (scalar_t__,int ,struct kvm_memory_slot*) ;
 int __rmap_write_protect (struct kvm*,struct kvm_rmap_head*,int) ;

__attribute__((used)) static void kvm_mmu_write_protect_pt_masked(struct kvm *kvm,
         struct kvm_memory_slot *slot,
         gfn_t gfn_offset, unsigned long mask)
{
 struct kvm_rmap_head *rmap_head;

 while (mask) {
  rmap_head = __gfn_to_rmap(slot->base_gfn + gfn_offset + __ffs(mask),
       PT_PAGE_TABLE_LEVEL, slot);
  __rmap_write_protect(kvm, rmap_head, 0);


  mask &= mask - 1;
 }
}
