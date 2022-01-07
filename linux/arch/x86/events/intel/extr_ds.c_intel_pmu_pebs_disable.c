
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {unsigned long long idx; int flags; int config; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {scalar_t__ n_pebs; scalar_t__ n_large_pebs; scalar_t__ n_pebs_via_pt; unsigned long long pebs_enabled; scalar_t__ enabled; } ;
struct TYPE_2__ {int version; } ;


 int ARCH_PERFMON_EVENTSEL_INT ;
 int MSR_IA32_PEBS_ENABLE ;
 int PERF_X86_EVENT_PEBS_LDLAT ;
 int PERF_X86_EVENT_PEBS_ST ;
 int cpu_hw_events ;
 int intel_pmu_drain_pebs_buffer () ;
 int intel_pmu_pebs_via_pt_disable (struct perf_event*) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int wrmsrl (int ,unsigned long long) ;
 TYPE_1__ x86_pmu ;

void intel_pmu_pebs_disable(struct perf_event *event)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct hw_perf_event *hwc = &event->hw;

 if (cpuc->n_pebs == cpuc->n_large_pebs &&
     cpuc->n_pebs != cpuc->n_pebs_via_pt)
  intel_pmu_drain_pebs_buffer();

 cpuc->pebs_enabled &= ~(1ULL << hwc->idx);

 if ((event->hw.flags & PERF_X86_EVENT_PEBS_LDLAT) &&
     (x86_pmu.version < 5))
  cpuc->pebs_enabled &= ~(1ULL << (hwc->idx + 32));
 else if (event->hw.flags & PERF_X86_EVENT_PEBS_ST)
  cpuc->pebs_enabled &= ~(1ULL << 63);

 intel_pmu_pebs_via_pt_disable(event);

 if (cpuc->enabled)
  wrmsrl(MSR_IA32_PEBS_ENABLE, cpuc->pebs_enabled);

 hwc->config |= ARCH_PERFMON_EVENTSEL_INT;
}
