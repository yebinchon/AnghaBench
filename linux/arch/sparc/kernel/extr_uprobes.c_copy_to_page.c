
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long PAGE_MASK ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memcpy (void*,void const*,int) ;

__attribute__((used)) static void copy_to_page(struct page *page, unsigned long vaddr,
    const void *src, int len)
{
 void *kaddr = kmap_atomic(page);

 memcpy(kaddr + (vaddr & ~PAGE_MASK), src, len);
 kunmap_atomic(kaddr);
}
