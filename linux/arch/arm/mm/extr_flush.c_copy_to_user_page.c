
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 int flush_ptrace_access (struct vm_area_struct*,struct page*,unsigned long,void*,unsigned long) ;
 int memcpy (void*,void const*,unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;

void copy_to_user_page(struct vm_area_struct *vma, struct page *page,
         unsigned long uaddr, void *dst, const void *src,
         unsigned long len)
{



 memcpy(dst, src, len);
 flush_ptrace_access(vma, page, uaddr, dst, len);



}
