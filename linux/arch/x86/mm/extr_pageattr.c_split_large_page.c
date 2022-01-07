
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct cpa_data {int dummy; } ;
typedef int pte_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __free_page (struct page*) ;
 scalar_t__ __split_large_page (struct cpa_data*,int *,unsigned long,struct page*) ;
 struct page* alloc_pages (int ,int ) ;
 int cpa_lock ;
 int debug_pagealloc_enabled () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int split_large_page(struct cpa_data *cpa, pte_t *kpte,
       unsigned long address)
{
 struct page *base;

 if (!debug_pagealloc_enabled())
  spin_unlock(&cpa_lock);
 base = alloc_pages(GFP_KERNEL, 0);
 if (!debug_pagealloc_enabled())
  spin_lock(&cpa_lock);
 if (!base)
  return -ENOMEM;

 if (__split_large_page(cpa, kpte, address, base))
  __free_page(base);

 return 0;
}
