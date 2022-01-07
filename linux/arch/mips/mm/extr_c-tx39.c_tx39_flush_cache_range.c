
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;


 int cpu_context (int ,int ) ;
 int cpu_has_dc_aliases ;
 int smp_processor_id () ;
 int tx39_blast_dcache () ;

__attribute__((used)) static void tx39_flush_cache_range(struct vm_area_struct *vma,
 unsigned long start, unsigned long end)
{
 if (!cpu_has_dc_aliases)
  return;
 if (!(cpu_context(smp_processor_id(), vma->vm_mm)))
  return;

 tx39_blast_dcache();
}
