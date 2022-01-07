
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct cpa_data {unsigned long* vaddr; int numpages; int flags; int mask_clr; int mask_set; int * pgd; } ;


 int _PAGE_PRESENT ;
 int _PAGE_RW ;
 int __change_page_attr_set_clr (struct cpa_data*,int ) ;
 int __pgprot (int) ;
 scalar_t__ page_address (struct page*) ;

__attribute__((used)) static int __set_pages_np(struct page *page, int numpages)
{
 unsigned long tempaddr = (unsigned long) page_address(page);
 struct cpa_data cpa = { .vaddr = &tempaddr,
    .pgd = ((void*)0),
    .numpages = numpages,
    .mask_set = __pgprot(0),
    .mask_clr = __pgprot(_PAGE_PRESENT | _PAGE_RW),
    .flags = 0};







 return __change_page_attr_set_clr(&cpa, 0);
}
