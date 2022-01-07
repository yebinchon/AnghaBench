
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct drbd_device {int pp_in_use; int pp_in_use_by_net; } ;
typedef int atomic_t ;


 int DRBD_MAX_BIO_SIZE ;
 int PAGE_SIZE ;
 int atomic_sub_return (int,int *) ;
 int drbd_minor_count ;
 int drbd_pp_lock ;
 int drbd_pp_pool ;
 int drbd_pp_vacant ;
 int drbd_pp_wait ;
 int drbd_warn (struct drbd_device*,char*,char*,int) ;
 int page_chain_add (int *,struct page*,struct page*) ;
 int page_chain_free (struct page*) ;
 struct page* page_chain_tail (struct page*,int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void drbd_free_pages(struct drbd_device *device, struct page *page, int is_net)
{
 atomic_t *a = is_net ? &device->pp_in_use_by_net : &device->pp_in_use;
 int i;

 if (page == ((void*)0))
  return;

 if (drbd_pp_vacant > (DRBD_MAX_BIO_SIZE/PAGE_SIZE) * drbd_minor_count)
  i = page_chain_free(page);
 else {
  struct page *tmp;
  tmp = page_chain_tail(page, &i);
  spin_lock(&drbd_pp_lock);
  page_chain_add(&drbd_pp_pool, page, tmp);
  drbd_pp_vacant += i;
  spin_unlock(&drbd_pp_lock);
 }
 i = atomic_sub_return(i, a);
 if (i < 0)
  drbd_warn(device, "ASSERTION FAILED: %s: %d < 0\n",
   is_net ? "pp_in_use_by_net" : "pp_in_use", i);
 wake_up(&drbd_pp_wait);
}
