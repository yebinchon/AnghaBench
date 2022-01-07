
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct drbd_device {int dummy; } ;


 int GFP_TRY ;
 struct page* alloc_page (int ) ;
 int drbd_pp_lock ;
 int drbd_pp_pool ;
 unsigned int drbd_pp_vacant ;
 int page_chain_add (int *,struct page*,struct page*) ;
 struct page* page_chain_del (int *,unsigned int) ;
 struct page* page_chain_tail (struct page*,int *) ;
 int set_page_private (struct page*,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct page *__drbd_alloc_pages(struct drbd_device *device,
           unsigned int number)
{
 struct page *page = ((void*)0);
 struct page *tmp = ((void*)0);
 unsigned int i = 0;



 if (drbd_pp_vacant >= number) {
  spin_lock(&drbd_pp_lock);
  page = page_chain_del(&drbd_pp_pool, number);
  if (page)
   drbd_pp_vacant -= number;
  spin_unlock(&drbd_pp_lock);
  if (page)
   return page;
 }




 for (i = 0; i < number; i++) {
  tmp = alloc_page(GFP_TRY);
  if (!tmp)
   break;
  set_page_private(tmp, (unsigned long)page);
  page = tmp;
 }

 if (i == number)
  return page;




 if (page) {
  tmp = page_chain_tail(page, ((void*)0));
  spin_lock(&drbd_pp_lock);
  page_chain_add(&drbd_pp_pool, page, tmp);
  drbd_pp_vacant += i;
  spin_unlock(&drbd_pp_lock);
 }
 return ((void*)0);
}
