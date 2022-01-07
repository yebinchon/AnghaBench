
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long PAGE_MASK ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memcpy (void*,void*,unsigned long) ;
 int sync_icache_aliases (void*,unsigned long) ;

void arch_uprobe_copy_ixol(struct page *page, unsigned long vaddr,
  void *src, unsigned long len)
{
 void *xol_page_kaddr = kmap_atomic(page);
 void *dst = xol_page_kaddr + (vaddr & ~PAGE_MASK);


 memcpy(dst, src, len);


 sync_icache_aliases(dst, len);

 kunmap_atomic(xol_page_kaddr);
}
