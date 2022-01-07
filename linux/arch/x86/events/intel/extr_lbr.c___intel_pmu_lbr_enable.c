
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct cpu_hw_events {TYPE_1__* lbr_sel; } ;
struct TYPE_4__ {int version; int lbr_sel_mask; } ;
struct TYPE_3__ {int config; } ;


 int DEBUGCTLMSR_FREEZE_LBRS_ON_PMI ;
 int DEBUGCTLMSR_LBR ;
 int LBR_CALL_STACK ;
 int MSR_IA32_DEBUGCTLMSR ;
 int MSR_LBR_SELECT ;
 int cpu_hw_events ;
 int rdmsrl (int ,int) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int wrmsrl (int ,int) ;
 TYPE_2__ x86_pmu ;

__attribute__((used)) static void __intel_pmu_lbr_enable(bool pmi)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 u64 debugctl, lbr_select = 0, orig_debugctl;





 if (pmi && x86_pmu.version >= 4)
  return;





 if (cpuc->lbr_sel)
  lbr_select = cpuc->lbr_sel->config & x86_pmu.lbr_sel_mask;
 if (!pmi && cpuc->lbr_sel)
  wrmsrl(MSR_LBR_SELECT, lbr_select);

 rdmsrl(MSR_IA32_DEBUGCTLMSR, debugctl);
 orig_debugctl = debugctl;
 debugctl |= DEBUGCTLMSR_LBR;





 if (!(lbr_select & LBR_CALL_STACK))
  debugctl |= DEBUGCTLMSR_FREEZE_LBRS_ON_PMI;
 if (orig_debugctl != debugctl)
  wrmsrl(MSR_IA32_DEBUGCTLMSR, debugctl);
}
