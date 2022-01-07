
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mm; } ;


 unsigned long DEFAULT_MAP_WINDOW ;
 unsigned long ENOMEM ;
 unsigned long MAP_FIXED ;
 TYPE_1__* current ;
 int kernel_managing_mpx_tables (int ) ;

unsigned long mpx_unmapped_area_check(unsigned long addr, unsigned long len,
  unsigned long flags)
{
 if (!kernel_managing_mpx_tables(current->mm))
  return addr;
 if (addr + len <= DEFAULT_MAP_WINDOW)
  return addr;
 if (flags & MAP_FIXED)
  return -ENOMEM;





 if (len > DEFAULT_MAP_WINDOW)
  return -ENOMEM;


 return 0;
}
