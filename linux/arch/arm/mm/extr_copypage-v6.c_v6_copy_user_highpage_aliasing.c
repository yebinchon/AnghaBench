
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int flags; } ;


 unsigned int CACHE_COLOUR (unsigned long) ;
 unsigned int COPYPAGE_V6_FROM ;
 unsigned int COPYPAGE_V6_TO ;
 int PAGE_KERNEL ;
 unsigned int PAGE_SHIFT ;
 int PG_dcache_clean ;
 int __flush_dcache_page (int ,struct page*) ;
 int copy_page (void*,void*) ;
 int discard_old_kernel_data (int ) ;
 int mk_pte (struct page*,int ) ;
 int page_address (struct page*) ;
 int page_mapping_file (struct page*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int set_top_pte (unsigned long,int ) ;
 int test_and_set_bit (int ,int *) ;
 int v6_lock ;

__attribute__((used)) static void v6_copy_user_highpage_aliasing(struct page *to,
 struct page *from, unsigned long vaddr, struct vm_area_struct *vma)
{
 unsigned int offset = CACHE_COLOUR(vaddr);
 unsigned long kfrom, kto;

 if (!test_and_set_bit(PG_dcache_clean, &from->flags))
  __flush_dcache_page(page_mapping_file(from), from);


 discard_old_kernel_data(page_address(to));





 raw_spin_lock(&v6_lock);

 kfrom = COPYPAGE_V6_FROM + (offset << PAGE_SHIFT);
 kto = COPYPAGE_V6_TO + (offset << PAGE_SHIFT);

 set_top_pte(kfrom, mk_pte(from, PAGE_KERNEL));
 set_top_pte(kto, mk_pte(to, PAGE_KERNEL));

 copy_page((void *)kto, (void *)kfrom);

 raw_spin_unlock(&v6_lock);
}
