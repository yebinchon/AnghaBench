
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 unsigned long PAGE_SHIFT ;
 int PF_RANDOMIZE ;
 int TIF_32BIT ;
 TYPE_1__* current ;
 unsigned long get_random_long () ;
 scalar_t__ test_thread_flag (int ) ;

__attribute__((used)) static unsigned long mmap_rnd(void)
{
 unsigned long rnd = 0UL;

 if (current->flags & PF_RANDOMIZE) {
  unsigned long val = get_random_long();
  if (test_thread_flag(TIF_32BIT))
   rnd = (val % (1UL << (23UL-PAGE_SHIFT)));
  else
   rnd = (val % (1UL << (30UL-PAGE_SHIFT)));
 }
 return rnd << PAGE_SHIFT;
}
