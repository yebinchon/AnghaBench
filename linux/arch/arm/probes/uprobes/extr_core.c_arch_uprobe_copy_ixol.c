
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long PAGE_MASK ;
 int flush_uprobe_xol_access (struct page*,unsigned long,void*,unsigned long) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memcpy (void*,void*,unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;

void arch_uprobe_copy_ixol(struct page *page, unsigned long vaddr,
      void *src, unsigned long len)
{
 void *xol_page_kaddr = kmap_atomic(page);
 void *dst = xol_page_kaddr + (vaddr & ~PAGE_MASK);

 preempt_disable();


 memcpy(dst, src, len);


 flush_uprobe_xol_access(page, vaddr, dst, len);

 preempt_enable();

 kunmap_atomic(xol_page_kaddr);
}
