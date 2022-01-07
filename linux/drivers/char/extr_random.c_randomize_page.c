
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_ALIGN (unsigned long) ;
 int PAGE_ALIGNED (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 unsigned long ULONG_MAX ;
 unsigned long get_random_long () ;

unsigned long
randomize_page(unsigned long start, unsigned long range)
{
 if (!PAGE_ALIGNED(start)) {
  range -= PAGE_ALIGN(start) - start;
  start = PAGE_ALIGN(start);
 }

 if (start > ULONG_MAX - range)
  range = ULONG_MAX - start;

 range >>= PAGE_SHIFT;

 if (range == 0)
  return start;

 return start + (get_random_long() % range << PAGE_SHIFT);
}
