
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_page_path {unsigned int* idx; struct kvm_mmu_page** parent; } ;
struct kvm_mmu_page {int unsync_children; } ;


 unsigned int INVALID_INDEX ;
 int WARN_ON (int) ;
 int clear_unsync_child_bit (struct kvm_mmu_page*,unsigned int) ;

__attribute__((used)) static void mmu_pages_clear_parents(struct mmu_page_path *parents)
{
 struct kvm_mmu_page *sp;
 unsigned int level = 0;

 do {
  unsigned int idx = parents->idx[level];
  sp = parents->parent[level];
  if (!sp)
   return;

  WARN_ON(idx == INVALID_INDEX);
  clear_unsync_child_bit(sp, idx);
  level++;
 } while (!sp->unsync_children);
}
