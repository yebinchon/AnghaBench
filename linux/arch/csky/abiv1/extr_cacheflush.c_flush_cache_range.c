
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int VM_EXEC ;
 int dcache_wbinv_all () ;
 int icache_inv_all () ;

void flush_cache_range(struct vm_area_struct *vma, unsigned long start,
 unsigned long end)
{
 dcache_wbinv_all();

 if (vma->vm_flags & VM_EXEC)
  icache_inv_all();
}
