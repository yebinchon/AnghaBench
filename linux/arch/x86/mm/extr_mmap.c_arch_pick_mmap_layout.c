
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int dummy; } ;
struct mm_struct {int mmap_compat_legacy_base; int mmap_compat_base; int mmap_legacy_base; int mmap_base; int get_unmapped_area; } ;


 int arch_get_unmapped_area ;
 int arch_get_unmapped_area_topdown ;
 int arch_pick_mmap_base (int *,int *,int ,int ,struct rlimit*) ;
 int arch_rnd (int ) ;
 int mmap32_rnd_bits ;
 int mmap64_rnd_bits ;
 scalar_t__ mmap_is_legacy () ;
 int task_size_32bit () ;
 int task_size_64bit (int ) ;

void arch_pick_mmap_layout(struct mm_struct *mm, struct rlimit *rlim_stack)
{
 if (mmap_is_legacy())
  mm->get_unmapped_area = arch_get_unmapped_area;
 else
  mm->get_unmapped_area = arch_get_unmapped_area_topdown;

 arch_pick_mmap_base(&mm->mmap_base, &mm->mmap_legacy_base,
   arch_rnd(mmap64_rnd_bits), task_size_64bit(0),
   rlim_stack);
}
