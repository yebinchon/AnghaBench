
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_unmapped_area_info {unsigned long length; unsigned long low_limit; unsigned long high_limit; int align_mask; scalar_t__ align_offset; scalar_t__ flags; } ;
struct file {int dummy; } ;


 unsigned long EINVAL ;
 unsigned long ENOMEM ;
 unsigned long HPAGE_MASK ;
 unsigned long HPAGE_REGION_BASE ;
 int HPAGE_SIZE ;
 unsigned long MAP_FIXED ;
 int PAGE_MASK ;
 scalar_t__ REGION_NUMBER (unsigned long) ;
 scalar_t__ RGN_HPAGE ;
 unsigned long RGN_MAP_LIMIT ;
 scalar_t__ prepare_hugepage_range (struct file*,unsigned long,unsigned long) ;
 unsigned long vm_unmapped_area (struct vm_unmapped_area_info*) ;

unsigned long hugetlb_get_unmapped_area(struct file *file, unsigned long addr, unsigned long len,
  unsigned long pgoff, unsigned long flags)
{
 struct vm_unmapped_area_info info;

 if (len > RGN_MAP_LIMIT)
  return -ENOMEM;
 if (len & ~HPAGE_MASK)
  return -EINVAL;


 if (flags & MAP_FIXED) {
  if (prepare_hugepage_range(file, addr, len))
   return -EINVAL;
  return addr;
 }


 if ((REGION_NUMBER(addr) != RGN_HPAGE) || (addr & (HPAGE_SIZE - 1)))
  addr = HPAGE_REGION_BASE;

 info.flags = 0;
 info.length = len;
 info.low_limit = addr;
 info.high_limit = HPAGE_REGION_BASE + RGN_MAP_LIMIT;
 info.align_mask = PAGE_MASK & (HPAGE_SIZE - 1);
 info.align_offset = 0;
 return vm_unmapped_area(&info);
}
