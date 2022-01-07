
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 unsigned long PAGE_SIZE ;
 int VM_EXEC ;
 int __flush_dcache (unsigned long,unsigned long) ;
 int __flush_icache (unsigned long,unsigned long) ;

void flush_cache_page(struct vm_area_struct *vma, unsigned long vmaddr,
   unsigned long pfn)
{
 unsigned long start = vmaddr;
 unsigned long end = start + PAGE_SIZE;

 __flush_dcache(start, end);
 if (vma->vm_flags & VM_EXEC)
  __flush_icache(start, end);
}
