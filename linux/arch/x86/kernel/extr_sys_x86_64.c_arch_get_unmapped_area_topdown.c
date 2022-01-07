
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_unmapped_area_info {unsigned long length; unsigned long align_offset; scalar_t__ align_mask; int high_limit; int low_limit; int flags; } ;
struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long DEFAULT_MAP_WINDOW ;
 unsigned long ENOMEM ;
 scalar_t__ IS_ERR_VALUE (unsigned long) ;
 unsigned long const MAP_32BIT ;
 unsigned long const MAP_FIXED ;
 unsigned long PAGE_MASK ;
 unsigned long const PAGE_SHIFT ;
 int PAGE_SIZE ;
 unsigned long const TASK_SIZE ;
 unsigned long TASK_SIZE_MAX ;
 int VM_BUG_ON (int) ;
 int VM_UNMAPPED_AREA_TOPDOWN ;
 unsigned long arch_get_unmapped_area (struct file*,unsigned long const,unsigned long const,unsigned long const,unsigned long const) ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 scalar_t__ get_align_bits () ;
 scalar_t__ get_align_mask () ;
 int get_mmap_base (int ) ;
 int in_32bit_syscall () ;
 int mmap_address_hint_valid (unsigned long,unsigned long const) ;
 unsigned long mpx_unmapped_area_check (unsigned long,unsigned long const,unsigned long const) ;
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

 addr = mpx_unmapped_area_check(addr, len, flags);
 if (IS_ERR_VALUE(addr))
  return addr;


 if (len > TASK_SIZE)
  return -ENOMEM;


 if (flags & MAP_FIXED)
  return addr;


 if (!in_32bit_syscall() && (flags & MAP_32BIT))
  goto bottomup;


 if (addr) {
  addr &= PAGE_MASK;
  if (!mmap_address_hint_valid(addr, len))
   goto get_unmapped_area;

  vma = find_vma(mm, addr);
  if (!vma || addr + len <= vm_start_gap(vma))
   return addr;
 }
get_unmapped_area:

 info.flags = VM_UNMAPPED_AREA_TOPDOWN;
 info.length = len;
 info.low_limit = PAGE_SIZE;
 info.high_limit = get_mmap_base(0);
 if (addr > DEFAULT_MAP_WINDOW && !in_32bit_syscall())
  info.high_limit += TASK_SIZE_MAX - DEFAULT_MAP_WINDOW;

 info.align_mask = 0;
 info.align_offset = pgoff << PAGE_SHIFT;
 if (filp) {
  info.align_mask = get_align_mask();
  info.align_offset += get_align_bits();
 }
 addr = vm_unmapped_area(&info);
 if (!(addr & ~PAGE_MASK))
  return addr;
 VM_BUG_ON(addr != -ENOMEM);

bottomup:






 return arch_get_unmapped_area(filp, addr0, len, pgoff, flags);
}
