
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long CACHE_COLOUR (unsigned long) ;
 unsigned long COPYPAGE_V6_TO ;
 int PAGE_KERNEL ;
 unsigned long PAGE_SHIFT ;
 int clear_page (void*) ;
 int discard_old_kernel_data (int ) ;
 int mk_pte (struct page*,int ) ;
 int page_address (struct page*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int set_top_pte (unsigned long,int ) ;
 int v6_lock ;

__attribute__((used)) static void v6_clear_user_highpage_aliasing(struct page *page, unsigned long vaddr)
{
 unsigned long to = COPYPAGE_V6_TO + (CACHE_COLOUR(vaddr) << PAGE_SHIFT);


 discard_old_kernel_data(page_address(page));





 raw_spin_lock(&v6_lock);

 set_top_pte(to, mk_pte(page, PAGE_KERNEL));
 clear_page((void *)to);

 raw_spin_unlock(&v6_lock);
}
