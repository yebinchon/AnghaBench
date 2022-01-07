
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_unmapped_area_info {unsigned long length; unsigned long high_limit; unsigned long align_mask; unsigned long align_offset; int low_limit; scalar_t__ flags; } ;
struct vm_area_struct {int dummy; } ;
struct TYPE_3__ {unsigned long asce_limit; } ;
struct mm_struct {unsigned long mmap_base; TYPE_1__ context; } ;
struct file {int dummy; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 unsigned long ENOMEM ;
 unsigned long const MAP_FIXED ;
 unsigned long const MAP_SHARED ;
 unsigned long const MMAP_ALIGN_MASK ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_MASK ;
 unsigned long const PAGE_SHIFT ;
 int PAGE_SIZE ;
 unsigned long const TASK_SIZE ;
 int TASK_UNMAPPED_BASE ;
 int VM_BUG_ON (int) ;
 scalar_t__ VM_UNMAPPED_AREA_TOPDOWN ;
 int crst_table_upgrade (struct mm_struct*,unsigned long) ;
 TYPE_2__* current ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int max (int ,unsigned long const) ;
 unsigned long const mmap_min_addr ;
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
 struct vm_unmapped_area_info info;
 int rc;


 if (len > TASK_SIZE - mmap_min_addr)
  return -ENOMEM;

 if (flags & MAP_FIXED)
  goto check_asce_limit;


 if (addr) {
  addr = PAGE_ALIGN(addr);
  vma = find_vma(mm, addr);
  if (TASK_SIZE - len >= addr && addr >= mmap_min_addr &&
    (!vma || addr + len <= vm_start_gap(vma)))
   goto check_asce_limit;
 }

 info.flags = VM_UNMAPPED_AREA_TOPDOWN;
 info.length = len;
 info.low_limit = max(PAGE_SIZE, mmap_min_addr);
 info.high_limit = mm->mmap_base;
 if (filp || (flags & MAP_SHARED))
  info.align_mask = MMAP_ALIGN_MASK << PAGE_SHIFT;
 else
  info.align_mask = 0;
 info.align_offset = pgoff << PAGE_SHIFT;
 addr = vm_unmapped_area(&info);







 if (addr & ~PAGE_MASK) {
  VM_BUG_ON(addr != -ENOMEM);
  info.flags = 0;
  info.low_limit = TASK_UNMAPPED_BASE;
  info.high_limit = TASK_SIZE;
  addr = vm_unmapped_area(&info);
  if (addr & ~PAGE_MASK)
   return addr;
 }

check_asce_limit:
 if (addr + len > current->mm->context.asce_limit &&
     addr + len <= TASK_SIZE) {
  rc = crst_table_upgrade(mm, addr + len);
  if (rc)
   return (unsigned long) rc;
 }

 return addr;
}
