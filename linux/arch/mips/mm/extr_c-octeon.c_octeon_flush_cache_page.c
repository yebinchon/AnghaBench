
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int VM_EXEC ;
 int octeon_flush_icache_all_cores (struct vm_area_struct*) ;

__attribute__((used)) static void octeon_flush_cache_page(struct vm_area_struct *vma,
        unsigned long page, unsigned long pfn)
{
 if (vma->vm_flags & VM_EXEC)
  octeon_flush_icache_all_cores(vma);
}
