
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_mmu_page {int unsync_children; int unsync_child_bitmap; int * spt; } ;


 int __pa (int *) ;
 scalar_t__ __test_and_set_bit (unsigned int,int ) ;
 int kvm_mmu_mark_parents_unsync (struct kvm_mmu_page*) ;
 struct kvm_mmu_page* page_header (int ) ;

__attribute__((used)) static void mark_unsync(u64 *spte)
{
 struct kvm_mmu_page *sp;
 unsigned int index;

 sp = page_header(__pa(spte));
 index = spte - sp->spt;
 if (__test_and_set_bit(index, sp->unsync_child_bitmap))
  return;
 if (sp->unsync_children++)
  return;
 kvm_mmu_mark_parents_unsync(sp);
}
