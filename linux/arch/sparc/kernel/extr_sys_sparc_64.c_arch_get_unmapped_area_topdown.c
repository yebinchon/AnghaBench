
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_unmapped_area_info {unsigned long length; int align_mask; unsigned long align_offset; void* high_limit; int low_limit; scalar_t__ flags; } ;
struct vm_area_struct {int dummy; } ;
struct mm_struct {void* mmap_base; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int BUG_ON (int) ;
 unsigned long COLOR_ALIGN (unsigned long,unsigned long const) ;
 unsigned long EINVAL ;
 unsigned long ENOMEM ;
 unsigned long const MAP_FIXED ;
 unsigned long const MAP_SHARED ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 int PAGE_MASK ;
 unsigned long const PAGE_SHIFT ;
 int PAGE_SIZE ;
 int SHMLBA ;
 void* STACK_TOP32 ;
 int TASK_UNMAPPED_BASE ;
 int TIF_32BIT ;
 int VM_BUG_ON (int) ;
 scalar_t__ VM_UNMAPPED_AREA_TOPDOWN ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int test_thread_flag (int ) ;
 scalar_t__ unlikely (int) ;
 unsigned long vm_start_gap (struct vm_area_struct*) ;
 unsigned long vm_unmapped_area (struct vm_unmapped_area_info*) ;

unsigned long
arch_get_unmapped_area_topdown(struct file *filp, const unsigned long addr0,
     const unsigned long len, const unsigned long pgoff,
     const unsigned long flags)
{
 struct vm_area_struct *vma;
 struct mm_struct *mm = current->mm;
 unsigned long task_size = STACK_TOP32;
 unsigned long addr = addr0;
 int do_color_align;
 struct vm_unmapped_area_info info;


 BUG_ON(!test_thread_flag(TIF_32BIT));

 if (flags & MAP_FIXED) {



  if ((flags & MAP_SHARED) &&
      ((addr - (pgoff << PAGE_SHIFT)) & (SHMLBA - 1)))
   return -EINVAL;
  return addr;
 }

 if (unlikely(len > task_size))
  return -ENOMEM;

 do_color_align = 0;
 if (filp || (flags & MAP_SHARED))
  do_color_align = 1;


 if (addr) {
  if (do_color_align)
   addr = COLOR_ALIGN(addr, pgoff);
  else
   addr = PAGE_ALIGN(addr);

  vma = find_vma(mm, addr);
  if (task_size - len >= addr &&
      (!vma || addr + len <= vm_start_gap(vma)))
   return addr;
 }

 info.flags = VM_UNMAPPED_AREA_TOPDOWN;
 info.length = len;
 info.low_limit = PAGE_SIZE;
 info.high_limit = mm->mmap_base;
 info.align_mask = do_color_align ? (PAGE_MASK & (SHMLBA - 1)) : 0;
 info.align_offset = pgoff << PAGE_SHIFT;
 addr = vm_unmapped_area(&info);







 if (addr & ~PAGE_MASK) {
  VM_BUG_ON(addr != -ENOMEM);
  info.flags = 0;
  info.low_limit = TASK_UNMAPPED_BASE;
  info.high_limit = STACK_TOP32;
  addr = vm_unmapped_area(&info);
 }

 return addr;
}
