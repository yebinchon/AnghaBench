
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int CONFIG_DEBUG_VM ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ WARN_ON (int) ;
 int asid_cache (unsigned int) ;
 int asid_versions_eq (unsigned int,int ,int ) ;
 int cpu_context (unsigned int,struct mm_struct*) ;
 scalar_t__ cpu_has_mmid ;
 int get_new_mmu_context (struct mm_struct*) ;
 unsigned int smp_processor_id () ;

void check_mmu_context(struct mm_struct *mm)
{
 unsigned int cpu = smp_processor_id();





 if (WARN_ON(IS_ENABLED(CONFIG_DEBUG_VM) && cpu_has_mmid))
  return;


 if (!asid_versions_eq(cpu, cpu_context(cpu, mm), asid_cache(cpu)))
  get_new_mmu_context(mm);
}
