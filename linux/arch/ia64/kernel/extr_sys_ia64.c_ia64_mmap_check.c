
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long REGION_OFFSET (unsigned long) ;
 unsigned long RGN_MAP_LIMIT ;

int ia64_mmap_check(unsigned long addr, unsigned long len,
  unsigned long flags)
{
 unsigned long roff;






 roff = REGION_OFFSET(addr);
 if ((len > RGN_MAP_LIMIT) || (roff > (RGN_MAP_LIMIT - len)))
  return -EINVAL;
 return 0;
}
