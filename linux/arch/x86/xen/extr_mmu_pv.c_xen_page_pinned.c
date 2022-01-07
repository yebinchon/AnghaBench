
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PagePinned (struct page*) ;
 scalar_t__ static_branch_likely (int *) ;
 struct page* virt_to_page (void*) ;
 int xen_struct_pages_ready ;

__attribute__((used)) static bool xen_page_pinned(void *ptr)
{
 if (static_branch_likely(&xen_struct_pages_ready)) {
  struct page *page = virt_to_page(ptr);

  return PagePinned(page);
 }
 return 1;
}
