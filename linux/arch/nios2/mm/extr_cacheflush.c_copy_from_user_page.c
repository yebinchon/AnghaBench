
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;


 int VM_EXEC ;
 int __flush_dcache (unsigned long,unsigned long) ;
 int __flush_icache (unsigned long,unsigned long) ;
 int flush_cache_page (struct vm_area_struct*,unsigned long,int ) ;
 int memcpy (void*,void*,int) ;
 int page_to_pfn (struct page*) ;

void copy_from_user_page(struct vm_area_struct *vma, struct page *page,
   unsigned long user_vaddr,
   void *dst, void *src, int len)
{
 flush_cache_page(vma, user_vaddr, page_to_pfn(page));
 memcpy(dst, src, len);
 __flush_dcache((unsigned long)src, (unsigned long)src + len);
 if (vma->vm_flags & VM_EXEC)
  __flush_icache((unsigned long)src, (unsigned long)src + len);
}
