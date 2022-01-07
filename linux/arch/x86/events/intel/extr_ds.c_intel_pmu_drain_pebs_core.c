
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int precise_ip; } ;
struct perf_event {TYPE_2__ hw; TYPE_1__ attr; } ;
struct pebs_record_core {int dummy; } ;
struct debug_store {scalar_t__ pebs_buffer_base; scalar_t__ pebs_index; } ;
struct cpu_hw_events {int active_mask; struct perf_event** events; struct debug_store* ds; } ;
struct TYPE_6__ {int pebs_active; } ;


 int PERF_X86_EVENT_AUTO_RELOAD ;
 int WARN_ON_ONCE (int) ;
 int __intel_pmu_pebs_event (struct perf_event*,struct pt_regs*,struct pebs_record_core*,struct pebs_record_core*,int ,int,int ) ;
 int cpu_hw_events ;
 int intel_pmu_save_and_restart_reload (struct perf_event*,int ) ;
 int setup_pebs_fixed_sample_data ;
 int test_bit (int ,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 TYPE_3__ x86_pmu ;

__attribute__((used)) static void intel_pmu_drain_pebs_core(struct pt_regs *iregs)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct debug_store *ds = cpuc->ds;
 struct perf_event *event = cpuc->events[0];
 struct pebs_record_core *at, *top;
 int n;

 if (!x86_pmu.pebs_active)
  return;

 at = (struct pebs_record_core *)(unsigned long)ds->pebs_buffer_base;
 top = (struct pebs_record_core *)(unsigned long)ds->pebs_index;




 ds->pebs_index = ds->pebs_buffer_base;

 if (!test_bit(0, cpuc->active_mask))
  return;

 WARN_ON_ONCE(!event);

 if (!event->attr.precise_ip)
  return;

 n = top - at;
 if (n <= 0) {
  if (event->hw.flags & PERF_X86_EVENT_AUTO_RELOAD)
   intel_pmu_save_and_restart_reload(event, 0);
  return;
 }

 __intel_pmu_pebs_event(event, iregs, at, top, 0, n,
          setup_pebs_fixed_sample_data);
}
