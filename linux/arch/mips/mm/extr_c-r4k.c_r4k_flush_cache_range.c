
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int R4K_INDEX ;
 int VM_EXEC ;
 scalar_t__ cpu_has_dc_aliases ;
 int local_r4k_flush_cache_range ;
 int r4k_on_each_cpu (int ,int ,struct vm_area_struct*) ;

__attribute__((used)) static void r4k_flush_cache_range(struct vm_area_struct *vma,
 unsigned long start, unsigned long end)
{
 int exec = vma->vm_flags & VM_EXEC;

 if (cpu_has_dc_aliases || exec)
  r4k_on_each_cpu(R4K_INDEX, local_r4k_flush_cache_range, vma);
}
