
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct perf_sample_data {int period; } ;
struct hw_perf_event {int last_period; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {struct perf_event** events; } ;


 int mipspmu_event_set_period (struct perf_event*,struct hw_perf_event*,int) ;
 int mipspmu_event_update (struct perf_event*,struct hw_perf_event*,int) ;
 int mipsxx_pmu_disable_event (int) ;
 scalar_t__ perf_event_overflow (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ;

__attribute__((used)) static void handle_associated_event(struct cpu_hw_events *cpuc,
        int idx, struct perf_sample_data *data,
        struct pt_regs *regs)
{
 struct perf_event *event = cpuc->events[idx];
 struct hw_perf_event *hwc = &event->hw;

 mipspmu_event_update(event, hwc, idx);
 data->period = event->hw.last_period;
 if (!mipspmu_event_set_period(event, hwc, idx))
  return;

 if (perf_event_overflow(event, data, regs))
  mipsxx_pmu_disable_event(idx);
}
