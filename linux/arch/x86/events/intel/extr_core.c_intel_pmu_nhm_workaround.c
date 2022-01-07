
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int hw; } ;
struct cpu_hw_events {struct perf_event** events; } ;


 int ARCH_PERFMON_EVENTSEL_ENABLE ;
 scalar_t__ MSR_ARCH_PERFMON_EVENTSEL0 ;
 scalar_t__ MSR_ARCH_PERFMON_PERFCTR0 ;
 scalar_t__ MSR_CORE_PERF_GLOBAL_CTRL ;
 int __x86_pmu_enable_event (int *,int ) ;
 int cpu_hw_events ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int wrmsrl (scalar_t__,unsigned long const) ;
 int x86_perf_event_set_period (struct perf_event*) ;
 int x86_perf_event_update (struct perf_event*) ;

__attribute__((used)) static void intel_pmu_nhm_workaround(void)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 static const unsigned long nhm_magic[4] = {
  0x4300B5,
  0x4300D2,
  0x4300B1,
  0x4300B1
 };
 struct perf_event *event;
 int i;
 for (i = 0; i < 4; i++) {
  event = cpuc->events[i];
  if (event)
   x86_perf_event_update(event);
 }

 for (i = 0; i < 4; i++) {
  wrmsrl(MSR_ARCH_PERFMON_EVENTSEL0 + i, nhm_magic[i]);
  wrmsrl(MSR_ARCH_PERFMON_PERFCTR0 + i, 0x0);
 }

 wrmsrl(MSR_CORE_PERF_GLOBAL_CTRL, 0xf);
 wrmsrl(MSR_CORE_PERF_GLOBAL_CTRL, 0x0);

 for (i = 0; i < 4; i++) {
  event = cpuc->events[i];

  if (event) {
   x86_perf_event_set_period(event);
   __x86_pmu_enable_event(&event->hw,
     ARCH_PERFMON_EVENTSEL_ENABLE);
  } else
   wrmsrl(MSR_ARCH_PERFMON_EVENTSEL0 + i, 0x0);
 }
}
