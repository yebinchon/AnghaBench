
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int VM_EXEC ;
 int leon_flush_dcache_all () ;
 int leon_flush_icache_all () ;

void leon_flush_pcache_all(struct vm_area_struct *vma, unsigned long page)
{
 if (vma->vm_flags & VM_EXEC)
  leon_flush_icache_all();
 leon_flush_dcache_all();
}
