
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmu {int dummy; } ;
struct cpu_hw_events {int disabled; int pmcs_enabled; int* mmcr; scalar_t__ n_added; } ;
struct TYPE_2__ {int flags; } ;


 unsigned long MMCR0_BHRBA ;
 unsigned long MMCR0_EBE ;
 unsigned long MMCR0_FC ;
 unsigned long MMCR0_FC56 ;
 unsigned long MMCR0_PMAO ;
 unsigned long MMCR0_PMCC ;
 int MMCRA_SAMPLE_ENABLE ;
 int PPMU_ARCH_207S ;
 int SPRN_MMCR0 ;
 int SPRN_MMCRA ;
 int SPRN_SDAR ;
 int SPRN_SIAR ;
 int cpu_hw_events ;
 int ebb_switch_out (unsigned long) ;
 int isync () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mb () ;
 unsigned long mfspr (int ) ;
 int mtspr (int ,int) ;
 int ppc_enable_pmcs () ;
 TYPE_1__* ppmu ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int write_mmcr0 (struct cpu_hw_events*,unsigned long) ;

__attribute__((used)) static void power_pmu_disable(struct pmu *pmu)
{
 struct cpu_hw_events *cpuhw;
 unsigned long flags, mmcr0, val;

 if (!ppmu)
  return;
 local_irq_save(flags);
 cpuhw = this_cpu_ptr(&cpu_hw_events);

 if (!cpuhw->disabled) {



  if (!cpuhw->pmcs_enabled) {
   ppc_enable_pmcs();
   cpuhw->pmcs_enabled = 1;
  }




  val = mmcr0 = mfspr(SPRN_MMCR0);
  val |= MMCR0_FC;
  val &= ~(MMCR0_EBE | MMCR0_BHRBA | MMCR0_PMCC | MMCR0_PMAO |
    MMCR0_FC56);






  write_mmcr0(cpuhw, val);
  mb();
  isync();




  if (cpuhw->mmcr[2] & MMCRA_SAMPLE_ENABLE) {
   mtspr(SPRN_MMCRA,
         cpuhw->mmcr[2] & ~MMCRA_SAMPLE_ENABLE);
   mb();
   isync();
  }

  cpuhw->disabled = 1;
  cpuhw->n_added = 0;

  ebb_switch_out(mmcr0);
 }

 local_irq_restore(flags);
}
