
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long PAGE_SIZE ;
 unsigned long __sme_page_pa (struct page*) ;

__attribute__((used)) static unsigned long get_num_contig_pages(unsigned long idx,
    struct page **inpages, unsigned long npages)
{
 unsigned long paddr, next_paddr;
 unsigned long i = idx + 1, pages = 1;


 paddr = __sme_page_pa(inpages[idx]);
 while (i < npages) {
  next_paddr = __sme_page_pa(inpages[i++]);
  if ((paddr + PAGE_SIZE) == next_paddr) {
   pages++;
   paddr = next_paddr;
   continue;
  }
  break;
 }

 return pages;
}
