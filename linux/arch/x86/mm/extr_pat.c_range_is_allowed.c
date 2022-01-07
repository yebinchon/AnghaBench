
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int devmem_is_allowed (unsigned long) ;
 int pat_enabled () ;

__attribute__((used)) static inline int range_is_allowed(unsigned long pfn, unsigned long size)
{
 u64 from = ((u64)pfn) << PAGE_SHIFT;
 u64 to = from + size;
 u64 cursor = from;

 if (!pat_enabled())
  return 1;

 while (cursor < to) {
  if (!devmem_is_allowed(pfn))
   return 0;
  cursor += PAGE_SIZE;
  pfn++;
 }
 return 1;
}
