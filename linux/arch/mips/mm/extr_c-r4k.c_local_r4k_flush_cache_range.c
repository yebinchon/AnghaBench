
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int vm_mm; } ;


 int R4K_INDEX ;
 int VM_EXEC ;
 scalar_t__ cpu_has_dc_aliases ;
 int cpu_has_ic_fills_f_dc ;
 int has_valid_asid (int ,int ) ;
 int r4k_blast_dcache () ;
 int r4k_blast_icache () ;

__attribute__((used)) static inline void local_r4k_flush_cache_range(void * args)
{
 struct vm_area_struct *vma = args;
 int exec = vma->vm_flags & VM_EXEC;

 if (!has_valid_asid(vma->vm_mm, R4K_INDEX))
  return;






 if (cpu_has_dc_aliases || (exec && !cpu_has_ic_fills_f_dc))
  r4k_blast_dcache();

 if (exec)
  r4k_blast_icache();
}
