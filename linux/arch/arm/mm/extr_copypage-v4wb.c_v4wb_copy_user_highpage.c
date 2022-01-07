
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 int flush_cache_page (struct vm_area_struct*,unsigned long,int ) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int page_to_pfn (struct page*) ;
 int v4wb_copy_user_page (void*,void*) ;

void v4wb_copy_user_highpage(struct page *to, struct page *from,
 unsigned long vaddr, struct vm_area_struct *vma)
{
 void *kto, *kfrom;

 kto = kmap_atomic(to);
 kfrom = kmap_atomic(from);
 flush_cache_page(vma, vaddr, page_to_pfn(from));
 v4wb_copy_user_page(kto, kfrom);
 kunmap_atomic(kfrom);
 kunmap_atomic(kto);
}
