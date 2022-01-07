
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rlimit {unsigned long rlim_cur; } ;
struct mm_struct {int get_unmapped_area; scalar_t__ mmap_base; } ;
struct TYPE_2__ {int personality; } ;


 int ADDR_COMPAT_LAYOUT ;
 scalar_t__ PAGE_ALIGN (unsigned long) ;
 unsigned long RLIM_INFINITY ;
 unsigned long STACK_TOP32 ;
 scalar_t__ TASK_UNMAPPED_BASE ;
 int TIF_32BIT ;
 int arch_get_unmapped_area ;
 int arch_get_unmapped_area_topdown ;
 TYPE_1__* current ;
 unsigned long mmap_rnd () ;
 scalar_t__ sysctl_legacy_va_layout ;
 int test_thread_flag (int ) ;

void arch_pick_mmap_layout(struct mm_struct *mm, struct rlimit *rlim_stack)
{
 unsigned long random_factor = mmap_rnd();
 unsigned long gap;





 gap = rlim_stack->rlim_cur;
 if (!test_thread_flag(TIF_32BIT) ||
     (current->personality & ADDR_COMPAT_LAYOUT) ||
     gap == RLIM_INFINITY ||
     sysctl_legacy_va_layout) {
  mm->mmap_base = TASK_UNMAPPED_BASE + random_factor;
  mm->get_unmapped_area = arch_get_unmapped_area;
 } else {

  unsigned long task_size = STACK_TOP32;

  if (gap < 128 * 1024 * 1024)
   gap = 128 * 1024 * 1024;
  if (gap > (task_size / 6 * 5))
   gap = (task_size / 6 * 5);

  mm->mmap_base = PAGE_ALIGN(task_size - gap - random_factor);
  mm->get_unmapped_area = arch_get_unmapped_area_topdown;
 }
}
