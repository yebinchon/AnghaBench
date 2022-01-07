
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rlimit {int dummy; } ;
struct mm_struct {int get_unmapped_area; int mmap_base; } ;
struct TYPE_2__ {int flags; } ;


 int PF_RANDOMIZE ;
 int TASK_UNMAPPED_BASE ;
 int arch_get_unmapped_area ;
 int arch_get_unmapped_area_topdown ;
 unsigned long arch_mmap_rnd () ;
 TYPE_1__* current ;
 int mmap_base (unsigned long,struct rlimit*) ;
 scalar_t__ mmap_is_legacy (struct rlimit*) ;
 void radix__arch_pick_mmap_layout (struct mm_struct*,unsigned long,struct rlimit*) ;
 scalar_t__ radix_enabled () ;

void arch_pick_mmap_layout(struct mm_struct *mm, struct rlimit *rlim_stack)
{
 unsigned long random_factor = 0UL;

 if (current->flags & PF_RANDOMIZE)
  random_factor = arch_mmap_rnd();

 if (radix_enabled())
  return radix__arch_pick_mmap_layout(mm, random_factor,
          rlim_stack);




 if (mmap_is_legacy(rlim_stack)) {
  mm->mmap_base = TASK_UNMAPPED_BASE;
  mm->get_unmapped_area = arch_get_unmapped_area;
 } else {
  mm->mmap_base = mmap_base(random_factor, rlim_stack);
  mm->get_unmapped_area = arch_get_unmapped_area_topdown;
 }
}
