
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 void* kmap_atomic_prot (struct page*,int ) ;
 int kmap_prot ;

void *kmap_atomic(struct page *page)
{
 return kmap_atomic_prot(page, kmap_prot);
}
