
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;


 int VM_EXEC ;
 int sync_icache_aliases (void*,unsigned long) ;

__attribute__((used)) static void flush_ptrace_access(struct vm_area_struct *vma, struct page *page,
    unsigned long uaddr, void *kaddr,
    unsigned long len)
{
 if (vma->vm_flags & VM_EXEC)
  sync_icache_aliases(kaddr, len);
}
