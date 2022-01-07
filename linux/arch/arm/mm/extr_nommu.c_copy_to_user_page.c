
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;


 int VM_EXEC ;
 int __cpuc_coherent_user_range (unsigned long,unsigned long) ;
 int memcpy (void*,void const*,unsigned long) ;

void copy_to_user_page(struct vm_area_struct *vma, struct page *page,
         unsigned long uaddr, void *dst, const void *src,
         unsigned long len)
{
 memcpy(dst, src, len);
 if (vma->vm_flags & VM_EXEC)
  __cpuc_coherent_user_range(uaddr, uaddr + len);
}
