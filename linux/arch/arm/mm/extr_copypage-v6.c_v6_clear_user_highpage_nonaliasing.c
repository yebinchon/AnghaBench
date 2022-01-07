
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int clear_page (void*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;

__attribute__((used)) static void v6_clear_user_highpage_nonaliasing(struct page *page, unsigned long vaddr)
{
 void *kaddr = kmap_atomic(page);
 clear_page(kaddr);
 kunmap_atomic(kaddr);
}
