
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_unmapped_area_info {unsigned long length; unsigned long low_limit; unsigned long high_limit; int align_mask; unsigned long align_offset; scalar_t__ flags; } ;
struct file {int dummy; } ;


 unsigned long EINVAL ;
 unsigned long ENOMEM ;
 unsigned long MAP_FIXED ;
 unsigned long MAP_SHARED ;
 int PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int SHMLBA ;
 unsigned long TASK_SIZE ;
 unsigned long TASK_UNMAPPED_BASE ;
 unsigned long vm_unmapped_area (struct vm_unmapped_area_info*) ;

unsigned long arch_get_unmapped_area(struct file *filp, unsigned long addr, unsigned long len, unsigned long pgoff, unsigned long flags)
{
 struct vm_unmapped_area_info info;

 if (flags & MAP_FIXED) {



  if ((flags & MAP_SHARED) &&
      ((addr - (pgoff << PAGE_SHIFT)) & (SHMLBA - 1)))
   return -EINVAL;
  return addr;
 }


 if (len > TASK_SIZE - PAGE_SIZE)
  return -ENOMEM;
 if (!addr)
  addr = TASK_UNMAPPED_BASE;

 info.flags = 0;
 info.length = len;
 info.low_limit = addr;
 info.high_limit = TASK_SIZE;
 info.align_mask = (flags & MAP_SHARED) ?
  (PAGE_MASK & (SHMLBA - 1)) : 0;
 info.align_offset = pgoff << PAGE_SHIFT;
 return vm_unmapped_area(&info);
}
