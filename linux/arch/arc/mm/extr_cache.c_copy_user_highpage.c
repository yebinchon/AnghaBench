
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int flags; } ;


 int PG_dc_clean ;
 int __flush_dcache_page (unsigned long,unsigned long) ;
 scalar_t__ addr_not_cache_congruent (void*,unsigned long) ;
 int clear_bit (int ,int *) ;
 int copy_page (void*,void*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 scalar_t__ page_mapcount (struct page*) ;
 int set_bit (int ,int *) ;

void copy_user_highpage(struct page *to, struct page *from,
 unsigned long u_vaddr, struct vm_area_struct *vma)
{
 void *kfrom = kmap_atomic(from);
 void *kto = kmap_atomic(to);
 int clean_src_k_mappings = 0;
 if (page_mapcount(from) && addr_not_cache_congruent(kfrom, u_vaddr)) {
  __flush_dcache_page((unsigned long)kfrom, u_vaddr);
  clean_src_k_mappings = 1;
 }

 copy_page(kto, kfrom);
 clear_bit(PG_dc_clean, &to->flags);





 if (clean_src_k_mappings) {
  __flush_dcache_page((unsigned long)kfrom, (unsigned long)kfrom);
  set_bit(PG_dc_clean, &from->flags);
 } else {
  clear_bit(PG_dc_clean, &from->flags);
 }

 kunmap_atomic(kto);
 kunmap_atomic(kfrom);
}
