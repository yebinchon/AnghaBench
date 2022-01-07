
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {unsigned long rlim_cur; } ;


 unsigned long PAGE_ALIGN (int) ;
 int STACK_TOP ;
 unsigned long stack_guard_gap ;
 unsigned long stack_maxrandom_size () ;

__attribute__((used)) static inline unsigned long mmap_base(unsigned long rnd,
          struct rlimit *rlim_stack)
{
 unsigned long gap = rlim_stack->rlim_cur;
 unsigned long pad = stack_maxrandom_size() + stack_guard_gap;
 unsigned long gap_min, gap_max;


 if (gap + pad > gap)
  gap += pad;





 gap_min = 32 * 1024 * 1024UL;
 gap_max = (STACK_TOP / 6) * 5;

 if (gap < gap_min)
  gap = gap_min;
 else if (gap > gap_max)
  gap = gap_max;

 return PAGE_ALIGN(STACK_TOP - gap - rnd);
}
