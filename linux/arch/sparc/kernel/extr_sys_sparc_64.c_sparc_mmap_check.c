
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long STACK_TOP32 ;
 int TIF_32BIT ;
 unsigned long VA_EXCLUDE_START ;
 scalar_t__ invalid_64bit_range (unsigned long,unsigned long) ;
 scalar_t__ test_thread_flag (int ) ;

int sparc_mmap_check(unsigned long addr, unsigned long len)
{
 if (test_thread_flag(TIF_32BIT)) {
  if (len >= STACK_TOP32)
   return -EINVAL;

  if (addr > STACK_TOP32 - len)
   return -EINVAL;
 } else {
  if (len >= VA_EXCLUDE_START)
   return -EINVAL;

  if (invalid_64bit_range(addr, len))
   return -EINVAL;
 }

 return 0;
}
