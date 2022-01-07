
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;


 int PG_dc_clean ;
 int clear_bit (int ,int *) ;
 int clear_page (void*) ;

void clear_user_page(void *to, unsigned long u_vaddr, struct page *page)
{
 clear_page(to);
 clear_bit(PG_dc_clean, &page->flags);
}
