
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_unmapped_area_info {unsigned long length; unsigned long low_limit; int high_limit; unsigned long align_mask; scalar_t__ align_offset; scalar_t__ flags; } ;
struct mm_struct {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long EINVAL ;
 unsigned long ENOMEM ;
 unsigned long MAP_FIXED ;
 unsigned long MAP_SHARED ;
 int PAGE_MASK ;
 scalar_t__ REGION_NUMBER (unsigned long) ;
 scalar_t__ RGN_HPAGE ;
 unsigned long RGN_MAP_LIMIT ;
 int SHMLBA ;
 int TASK_SIZE ;
 unsigned long TASK_UNMAPPED_BASE ;
 TYPE_1__* current ;
 scalar_t__ is_hugepage_only_range (struct mm_struct*,unsigned long,unsigned long) ;
 unsigned long vm_unmapped_area (struct vm_unmapped_area_info*) ;

unsigned long
arch_get_unmapped_area (struct file *filp, unsigned long addr, unsigned long len,
   unsigned long pgoff, unsigned long flags)
{
 long map_shared = (flags & MAP_SHARED);
 unsigned long align_mask = 0;
 struct mm_struct *mm = current->mm;
 struct vm_unmapped_area_info info;

 if (len > RGN_MAP_LIMIT)
  return -ENOMEM;


 if (flags & MAP_FIXED) {
  if (is_hugepage_only_range(mm, addr, len))
   return -EINVAL;
  return addr;
 }





 if (!addr)
  addr = TASK_UNMAPPED_BASE;

 if (map_shared && (TASK_SIZE > 0xfffffffful))






  align_mask = PAGE_MASK & (SHMLBA - 1);

 info.flags = 0;
 info.length = len;
 info.low_limit = addr;
 info.high_limit = TASK_SIZE;
 info.align_mask = align_mask;
 info.align_offset = 0;
 return vm_unmapped_area(&info);
}
