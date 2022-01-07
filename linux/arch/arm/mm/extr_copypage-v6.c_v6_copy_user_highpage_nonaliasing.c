
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 int copy_page (void*,void*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;

__attribute__((used)) static void v6_copy_user_highpage_nonaliasing(struct page *to,
 struct page *from, unsigned long vaddr, struct vm_area_struct *vma)
{
 void *kto, *kfrom;

 kfrom = kmap_atomic(from);
 kto = kmap_atomic(to);
 copy_page(kto, kfrom);
 kunmap_atomic(kto);
 kunmap_atomic(kfrom);
}
