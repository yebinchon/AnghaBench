
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;


 int VM_EXEC ;
 int flush_icache_range (unsigned long,unsigned long) ;
 int memcpy (void*,void*,int) ;

void copy_to_user_page(struct vm_area_struct *vma, struct page *page,
         unsigned long vaddr, void *dst, void *src, int len)
{
 memcpy(dst, src, len);
 if (vma->vm_flags & VM_EXEC) {
  flush_icache_range((unsigned long) dst,
  (unsigned long) dst + len);
 }
}
