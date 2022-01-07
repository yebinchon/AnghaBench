
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_unmapped_area_info {unsigned long length; int align_mask; unsigned long align_offset; int high_limit; int low_limit; int flags; } ;
struct vm_area_struct {int dummy; } ;
struct mm_struct {int mmap_base; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long COLOR_ALIGN (unsigned long,int,unsigned long const) ;
 unsigned long EINVAL ;
 unsigned long ENOMEM ;
 int GET_LAST_MMAP (struct file*) ;
 unsigned long const MAP_FIXED ;
 unsigned long const MAP_SHARED ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 int PAGE_MASK ;
 unsigned long const PAGE_SHIFT ;
 int PAGE_SIZE ;
 int SET_LAST_MMAP (struct file*,unsigned long) ;
 int SHM_COLOUR ;
 unsigned long const TASK_SIZE ;
 int VM_BUG_ON (int) ;
 int VM_UNMAPPED_AREA_TOPDOWN ;
 unsigned long arch_get_unmapped_area (struct file*,unsigned long const,unsigned long const,unsigned long const,unsigned long const) ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma_prev (struct mm_struct*,unsigned long,struct vm_area_struct**) ;
 unsigned long shared_align_offset (int,unsigned long const) ;
 unsigned long vm_end_gap (struct vm_area_struct*) ;
 unsigned long vm_start_gap (struct vm_area_struct*) ;
 unsigned long vm_unmapped_area (struct vm_unmapped_area_info*) ;

unsigned long
arch_get_unmapped_area_topdown(struct file *filp, const unsigned long addr0,
     const unsigned long len, const unsigned long pgoff,
     const unsigned long flags)
{
 struct vm_area_struct *vma, *prev;
 struct mm_struct *mm = current->mm;
 unsigned long addr = addr0;
 int do_color_align, last_mmap;
 struct vm_unmapped_area_info info;


 if (len > TASK_SIZE)
  return -ENOMEM;

 do_color_align = 0;
 if (filp || (flags & MAP_SHARED))
  do_color_align = 1;
 last_mmap = GET_LAST_MMAP(filp);

 if (flags & MAP_FIXED) {
  if ((flags & MAP_SHARED) && last_mmap &&
      (addr - shared_align_offset(last_mmap, pgoff))
   & (SHM_COLOUR - 1))
   return -EINVAL;
  goto found_addr;
 }


 if (addr) {
  if (do_color_align && last_mmap)
   addr = COLOR_ALIGN(addr, last_mmap, pgoff);
  else
   addr = PAGE_ALIGN(addr);

  vma = find_vma_prev(mm, addr, &prev);
  if (TASK_SIZE - len >= addr &&
      (!vma || addr + len <= vm_start_gap(vma)) &&
      (!prev || addr >= vm_end_gap(prev)))
   goto found_addr;
 }

 info.flags = VM_UNMAPPED_AREA_TOPDOWN;
 info.length = len;
 info.low_limit = PAGE_SIZE;
 info.high_limit = mm->mmap_base;
 info.align_mask = last_mmap ? (PAGE_MASK & (SHM_COLOUR - 1)) : 0;
 info.align_offset = shared_align_offset(last_mmap, pgoff);
 addr = vm_unmapped_area(&info);
 if (!(addr & ~PAGE_MASK))
  goto found_addr;
 VM_BUG_ON(addr != -ENOMEM);







 return arch_get_unmapped_area(filp, addr0, len, pgoff, flags);

found_addr:
 if (do_color_align && !last_mmap && !(addr & ~PAGE_MASK))
  SET_LAST_MMAP(filp, addr - (pgoff << PAGE_SHIFT));

 return addr;
}
