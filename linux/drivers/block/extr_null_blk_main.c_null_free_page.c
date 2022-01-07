
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_page {int page; int bitmap; } ;


 int NULLB_PAGE_FREE ;
 int NULLB_PAGE_LOCK ;
 int __free_page (int ) ;
 int __set_bit (int ,int ) ;
 int kfree (struct nullb_page*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void null_free_page(struct nullb_page *t_page)
{
 __set_bit(NULLB_PAGE_FREE, t_page->bitmap);
 if (test_bit(NULLB_PAGE_LOCK, t_page->bitmap))
  return;
 __free_page(t_page->page);
 kfree(t_page);
}
