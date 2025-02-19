
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct page {int flags; } ;
struct TYPE_3__ {scalar_t__ n_aliases; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;


 unsigned long PAGE_MASK ;
 int PG_dcache_clean ;
 TYPE_2__ boot_cpu_data ;
 int clear_bit (int ,int *) ;
 void* kmap_coherent (struct page*,unsigned long) ;
 int kunmap_coherent (void*) ;
 int memcpy (void*,void const*,unsigned long) ;
 scalar_t__ page_mapcount (struct page*) ;
 scalar_t__ test_bit (int ,int *) ;

void copy_from_user_page(struct vm_area_struct *vma, struct page *page,
    unsigned long vaddr, void *dst, const void *src,
    unsigned long len)
{
 if (boot_cpu_data.dcache.n_aliases && page_mapcount(page) &&
     test_bit(PG_dcache_clean, &page->flags)) {
  void *vfrom = kmap_coherent(page, vaddr) + (vaddr & ~PAGE_MASK);
  memcpy(dst, vfrom, len);
  kunmap_coherent(vfrom);
 } else {
  memcpy(dst, src, len);
  if (boot_cpu_data.dcache.n_aliases)
   clear_bit(PG_dcache_clean, &page->flags);
 }
}
