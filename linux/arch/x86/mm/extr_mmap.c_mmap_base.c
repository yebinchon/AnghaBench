
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {unsigned long rlim_cur; } ;


 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long SIZE_128M ;
 unsigned long stack_guard_gap ;
 unsigned long stack_maxrandom_size (unsigned long) ;

__attribute__((used)) static unsigned long mmap_base(unsigned long rnd, unsigned long task_size,
          struct rlimit *rlim_stack)
{
 unsigned long gap = rlim_stack->rlim_cur;
 unsigned long pad = stack_maxrandom_size(task_size) + stack_guard_gap;
 unsigned long gap_min, gap_max;


 if (gap + pad > gap)
  gap += pad;





 gap_min = SIZE_128M;
 gap_max = (task_size / 6) * 5;

 if (gap < gap_min)
  gap = gap_min;
 else if (gap > gap_max)
  gap = gap_max;

 return PAGE_ALIGN(task_size - gap - rnd);
}
