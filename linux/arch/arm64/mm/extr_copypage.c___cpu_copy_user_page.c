
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int copy_page (void*,void const*) ;
 int flush_dcache_page (struct page*) ;
 struct page* virt_to_page (void*) ;

void __cpu_copy_user_page(void *kto, const void *kfrom, unsigned long vaddr)
{
 struct page *page = virt_to_page(kto);
 copy_page(kto, kfrom);
 flush_dcache_page(page);
}
