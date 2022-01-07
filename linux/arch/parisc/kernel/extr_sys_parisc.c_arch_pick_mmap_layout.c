
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int dummy; } ;
struct mm_struct {int get_unmapped_area; int mmap_legacy_base; int mmap_base; } ;


 int arch_get_unmapped_area ;
 int arch_get_unmapped_area_topdown ;
 scalar_t__ mmap_is_legacy () ;
 int mmap_legacy_base () ;
 int mmap_upper_limit (struct rlimit*) ;

void arch_pick_mmap_layout(struct mm_struct *mm, struct rlimit *rlim_stack)
{
 mm->mmap_legacy_base = mmap_legacy_base();
 mm->mmap_base = mmap_upper_limit(rlim_stack);

 if (mmap_is_legacy()) {
  mm->mmap_base = mm->mmap_legacy_base;
  mm->get_unmapped_area = arch_get_unmapped_area;
 } else {
  mm->get_unmapped_area = arch_get_unmapped_area_topdown;
 }
}
