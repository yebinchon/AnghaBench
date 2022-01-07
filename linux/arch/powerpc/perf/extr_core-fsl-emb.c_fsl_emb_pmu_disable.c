
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct cpu_hw_events {int disabled; int pmcs_enabled; } ;


 int PMGC0_FAC ;
 int PMRN_PMGC0 ;
 scalar_t__ atomic_read (int *) ;
 int cpu_hw_events ;
 int isync () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mtpmr (int ,int ) ;
 int num_events ;
 int ppc_enable_pmcs () ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void fsl_emb_pmu_disable(struct pmu *pmu)
{
 struct cpu_hw_events *cpuhw;
 unsigned long flags;

 local_irq_save(flags);
 cpuhw = this_cpu_ptr(&cpu_hw_events);

 if (!cpuhw->disabled) {
  cpuhw->disabled = 1;




  if (!cpuhw->pmcs_enabled) {
   ppc_enable_pmcs();
   cpuhw->pmcs_enabled = 1;
  }

  if (atomic_read(&num_events)) {







   mtpmr(PMRN_PMGC0, PMGC0_FAC);
   isync();
  }
 }
 local_irq_restore(flags);
}
