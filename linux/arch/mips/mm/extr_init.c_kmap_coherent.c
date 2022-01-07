
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_KERNEL ;
 void* __kmap_pgprot (struct page*,unsigned long,int ) ;

void *kmap_coherent(struct page *page, unsigned long addr)
{
 return __kmap_pgprot(page, addr, PAGE_KERNEL);
}
