
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct hw_perf_event {int sample_period; int prev_count; int event_base_rdpmc; } ;
struct perf_event {int count; struct hw_perf_event hw; } ;
typedef int s64 ;
struct TYPE_4__ {int enabled; } ;
struct TYPE_3__ {int cntval_bits; } ;


 int WARN_ON (int) ;
 TYPE_2__ cpu_hw_events ;
 int local64_add (int,int *) ;
 int local64_read (int *) ;
 int local64_set (int *,int) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int rdpmcl (int ,int) ;
 int this_cpu_read (int ) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static int
intel_pmu_save_and_restart_reload(struct perf_event *event, int count)
{
 struct hw_perf_event *hwc = &event->hw;
 int shift = 64 - x86_pmu.cntval_bits;
 u64 period = hwc->sample_period;
 u64 prev_raw_count, new_raw_count;
 s64 new, old;

 WARN_ON(!period);




 WARN_ON(this_cpu_read(cpu_hw_events.enabled));

 prev_raw_count = local64_read(&hwc->prev_count);
 rdpmcl(hwc->event_base_rdpmc, new_raw_count);
 local64_set(&hwc->prev_count, new_raw_count);
 new = ((s64)(new_raw_count << shift) >> shift);
 old = ((s64)(prev_raw_count << shift) >> shift);
 local64_add(new - old + count * period, &event->count);

 perf_event_update_userpage(event);

 return 0;
}
