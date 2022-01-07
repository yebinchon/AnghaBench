
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int VM_EXEC ;
 int __flush_icache_all () ;

void flush_cache_range(struct vm_area_struct *vma, unsigned long start,
  unsigned long end)
{
 if (vma->vm_flags & VM_EXEC)
  __flush_icache_all();
}
