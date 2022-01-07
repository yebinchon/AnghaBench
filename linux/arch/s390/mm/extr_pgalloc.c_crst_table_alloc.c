
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;


 int GFP_KERNEL ;
 struct page* alloc_pages (int ,int) ;
 int arch_set_page_dat (struct page*,int) ;
 scalar_t__ page_to_phys (struct page*) ;

unsigned long *crst_table_alloc(struct mm_struct *mm)
{
 struct page *page = alloc_pages(GFP_KERNEL, 2);

 if (!page)
  return ((void*)0);
 arch_set_page_dat(page, 2);
 return (unsigned long *) page_to_phys(page);
}
