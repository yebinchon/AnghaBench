
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct gmap {TYPE_1__* mm; int guest_to_host; } ;
struct TYPE_2__ {int mmap_sem; } ;


 unsigned long PMD_MASK ;
 unsigned long PMD_SHIFT ;
 unsigned long PMD_SIZE ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma (TYPE_1__*,unsigned long) ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 unsigned long min (unsigned long,unsigned long) ;
 scalar_t__ radix_tree_lookup (int *,unsigned long) ;
 int up_read (int *) ;
 int zap_page_range (struct vm_area_struct*,unsigned long,unsigned long) ;

void gmap_discard(struct gmap *gmap, unsigned long from, unsigned long to)
{
 unsigned long gaddr, vmaddr, size;
 struct vm_area_struct *vma;

 down_read(&gmap->mm->mmap_sem);
 for (gaddr = from; gaddr < to;
      gaddr = (gaddr + PMD_SIZE) & PMD_MASK) {

  vmaddr = (unsigned long)
   radix_tree_lookup(&gmap->guest_to_host,
       gaddr >> PMD_SHIFT);
  if (!vmaddr)
   continue;
  vmaddr |= gaddr & ~PMD_MASK;

  vma = find_vma(gmap->mm, vmaddr);
  if (!vma)
   continue;




  if (is_vm_hugetlb_page(vma))
   continue;
  size = min(to - gaddr, PMD_SIZE - (gaddr & ~PMD_MASK));
  zap_page_range(vma, vmaddr, size);
 }
 up_read(&gmap->mm->mmap_sem);
}
