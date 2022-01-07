
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int personality; } ;


 int ADDR_LIMIT_32BIT ;
 unsigned long ENOMEM ;
 unsigned long MAP_FIXED ;
 int PAGE_ALIGN (unsigned long) ;
 int PAGE_SIZE ;
 unsigned long TASK_SIZE ;
 unsigned long TASK_UNMAPPED_BASE ;
 unsigned long arch_get_unmapped_area_1 (int ,unsigned long,unsigned long) ;
 TYPE_1__* current ;

unsigned long
arch_get_unmapped_area(struct file *filp, unsigned long addr,
         unsigned long len, unsigned long pgoff,
         unsigned long flags)
{
 unsigned long limit;


 if (current->personality & ADDR_LIMIT_32BIT)
  limit = 0x80000000;
 else
  limit = TASK_SIZE;

 if (len > limit)
  return -ENOMEM;

 if (flags & MAP_FIXED)
  return addr;
 if (addr) {
  addr = arch_get_unmapped_area_1 (PAGE_ALIGN(addr), len, limit);
  if (addr != (unsigned long) -ENOMEM)
   return addr;
 }


 addr = arch_get_unmapped_area_1 (PAGE_ALIGN(TASK_UNMAPPED_BASE),
      len, limit);
 if (addr != (unsigned long) -ENOMEM)
  return addr;


 addr = arch_get_unmapped_area_1 (PAGE_SIZE, len, limit);

 return addr;
}
