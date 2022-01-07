
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int flags; } ;


 scalar_t__ COPYPAGE_MINICACHE ;
 int PG_dcache_clean ;
 int __flush_dcache_page (int ,struct page*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int mc_copy_user_page (void*,void*) ;
 int minicache_lock ;
 int minicache_pgprot ;
 int mk_pte (struct page*,int ) ;
 int page_mapping_file (struct page*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int set_top_pte (scalar_t__,int ) ;
 int test_and_set_bit (int ,int *) ;

void xscale_mc_copy_user_highpage(struct page *to, struct page *from,
 unsigned long vaddr, struct vm_area_struct *vma)
{
 void *kto = kmap_atomic(to);

 if (!test_and_set_bit(PG_dcache_clean, &from->flags))
  __flush_dcache_page(page_mapping_file(from), from);

 raw_spin_lock(&minicache_lock);

 set_top_pte(COPYPAGE_MINICACHE, mk_pte(from, minicache_pgprot));

 mc_copy_user_page((void *)COPYPAGE_MINICACHE, kto);

 raw_spin_unlock(&minicache_lock);

 kunmap_atomic(kto);
}
