
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct debug_store {int bts_buffer_base; int bts_index; } ;
struct TYPE_4__ {int ds; } ;
struct TYPE_3__ {int num_counters; int num_counters_fixed; int version; scalar_t__ lbr_nr; } ;


 int DEBUGCTLMSR_FREEZE_LBRS_ON_PMI ;
 int DEBUGCTLMSR_LBR ;
 scalar_t__ MSR_ARCH_PERFMON_FIXED_CTR0 ;
 int MSR_CORE_PERF_GLOBAL_CTRL ;
 struct debug_store* __this_cpu_read (int ) ;
 TYPE_2__ cpu_hw_events ;
 int get_debugctlmsr () ;
 int intel_pmu_ack_status (int ) ;
 int intel_pmu_get_status () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pr_info (char*,int ) ;
 int smp_processor_id () ;
 int update_debugctlmsr (int) ;
 int wrmsrl (int ,int ) ;
 int wrmsrl_safe (scalar_t__,unsigned long long) ;
 TYPE_1__ x86_pmu ;
 scalar_t__ x86_pmu_config_addr (int) ;
 scalar_t__ x86_pmu_event_addr (int) ;

__attribute__((used)) static void intel_pmu_reset(void)
{
 struct debug_store *ds = __this_cpu_read(cpu_hw_events.ds);
 unsigned long flags;
 int idx;

 if (!x86_pmu.num_counters)
  return;

 local_irq_save(flags);

 pr_info("clearing PMU state on CPU#%d\n", smp_processor_id());

 for (idx = 0; idx < x86_pmu.num_counters; idx++) {
  wrmsrl_safe(x86_pmu_config_addr(idx), 0ull);
  wrmsrl_safe(x86_pmu_event_addr(idx), 0ull);
 }
 for (idx = 0; idx < x86_pmu.num_counters_fixed; idx++)
  wrmsrl_safe(MSR_ARCH_PERFMON_FIXED_CTR0 + idx, 0ull);

 if (ds)
  ds->bts_index = ds->bts_buffer_base;


 if (x86_pmu.version >= 2) {
  intel_pmu_ack_status(intel_pmu_get_status());
  wrmsrl(MSR_CORE_PERF_GLOBAL_CTRL, 0);
 }


 if (x86_pmu.lbr_nr) {
  update_debugctlmsr(get_debugctlmsr() &
   ~(DEBUGCTLMSR_FREEZE_LBRS_ON_PMI|DEBUGCTLMSR_LBR));
 }

 local_irq_restore(flags);
}
