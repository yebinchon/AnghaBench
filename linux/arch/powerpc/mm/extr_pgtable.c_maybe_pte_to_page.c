
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pte_t ;


 scalar_t__ PageReserved (struct page*) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 unsigned long pte_pfn (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct page *maybe_pte_to_page(pte_t pte)
{
 unsigned long pfn = pte_pfn(pte);
 struct page *page;

 if (unlikely(!pfn_valid(pfn)))
  return ((void*)0);
 page = pfn_to_page(pfn);
 if (PageReserved(page))
  return ((void*)0);
 return page;
}
