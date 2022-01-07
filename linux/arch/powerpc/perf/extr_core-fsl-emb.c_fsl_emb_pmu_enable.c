
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct cpu_hw_events {scalar_t__ n_events; scalar_t__ disabled; } ;


 int PMGC0_FCECE ;
 int PMGC0_PMIE ;
 int PMRN_PMGC0 ;
 int cpu_hw_events ;
 int isync () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mtpmr (int ,int) ;
 int ppc_set_pmu_inuse (int) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void fsl_emb_pmu_enable(struct pmu *pmu)
{
 struct cpu_hw_events *cpuhw;
 unsigned long flags;

 local_irq_save(flags);
 cpuhw = this_cpu_ptr(&cpu_hw_events);
 if (!cpuhw->disabled)
  goto out;

 cpuhw->disabled = 0;
 ppc_set_pmu_inuse(cpuhw->n_events != 0);

 if (cpuhw->n_events > 0) {
  mtpmr(PMRN_PMGC0, PMGC0_PMIE | PMGC0_FCECE);
  isync();
 }

 out:
 local_irq_restore(flags);
}
