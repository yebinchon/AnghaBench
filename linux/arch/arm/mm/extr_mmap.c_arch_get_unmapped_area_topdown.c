
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_unmapped_area_info {unsigned long length; unsigned long low_limit; unsigned long high_limit; int align_mask; unsigned long align_offset; scalar_t__ flags; } ;
struct vm_area_struct {int dummy; } ;
struct mm_struct {unsigned long mmap_base; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long COLOUR_ALIGN (unsigned long,unsigned long const) ;
 unsigned long EINVAL ;
 unsigned long ENOMEM ;
 unsigned long FIRST_USER_ADDRESS ;
 unsigned long const MAP_FIXED ;
 unsigned long const MAP_SHARED ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 int PAGE_MASK ;
 unsigned long const PAGE_SHIFT ;
 int SHMLBA ;
 unsigned long const TASK_SIZE ;
 int VM_BUG_ON (int) ;
 scalar_t__ VM_UNMAPPED_AREA_TOPDOWN ;
 int cache_is_vipt_aliasing () ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 unsigned long vm_start_gap (struct vm_area_struct*) ;
 unsigned long vm_unmapped_area (struct vm_unmapped_area_info*) ;

unsigned long
arch_get_unmapped_area_topdown(struct file *filp, const unsigned long addr0,
   const unsigned long len, const unsigned long pgoff,
   const unsigned long flags)
{
 struct vm_area_struct *vma;
 struct mm_struct *mm = current->mm;
 unsigned long addr = addr0;
 int do_align = 0;
 int aliasing = cache_is_vipt_aliasing();
 struct vm_unmapped_area_info info;





 if (aliasing)
  do_align = filp || (flags & MAP_SHARED);


 if (len > TASK_SIZE)
  return -ENOMEM;

 if (flags & MAP_FIXED) {
  if (aliasing && flags & MAP_SHARED &&
      (addr - (pgoff << PAGE_SHIFT)) & (SHMLBA - 1))
   return -EINVAL;
  return addr;
 }


 if (addr) {
  if (do_align)
   addr = COLOUR_ALIGN(addr, pgoff);
  else
   addr = PAGE_ALIGN(addr);
  vma = find_vma(mm, addr);
  if (TASK_SIZE - len >= addr &&
    (!vma || addr + len <= vm_start_gap(vma)))
   return addr;
 }

 info.flags = VM_UNMAPPED_AREA_TOPDOWN;
 info.length = len;
 info.low_limit = FIRST_USER_ADDRESS;
 info.high_limit = mm->mmap_base;
 info.align_mask = do_align ? (PAGE_MASK & (SHMLBA - 1)) : 0;
 info.align_offset = pgoff << PAGE_SHIFT;
 addr = vm_unmapped_area(&info);







 if (addr & ~PAGE_MASK) {
  VM_BUG_ON(addr != -ENOMEM);
  info.flags = 0;
  info.low_limit = mm->mmap_base;
  info.high_limit = TASK_SIZE;
  addr = vm_unmapped_area(&info);
 }

 return addr;
}
