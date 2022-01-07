
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_rmap_head {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;


 int PT_MAX_HUGEPAGE_LEVEL ;
 int PT_PAGE_TABLE_LEVEL ;
 struct kvm_rmap_head* __gfn_to_rmap (int ,int,struct kvm_memory_slot*) ;
 int __rmap_write_protect (struct kvm*,struct kvm_rmap_head*,int) ;

bool kvm_mmu_slot_gfn_write_protect(struct kvm *kvm,
        struct kvm_memory_slot *slot, u64 gfn)
{
 struct kvm_rmap_head *rmap_head;
 int i;
 bool write_protected = 0;

 for (i = PT_PAGE_TABLE_LEVEL; i <= PT_MAX_HUGEPAGE_LEVEL; ++i) {
  rmap_head = __gfn_to_rmap(gfn, i, slot);
  write_protected |= __rmap_write_protect(kvm, rmap_head, 1);
 }

 return write_protected;
}
