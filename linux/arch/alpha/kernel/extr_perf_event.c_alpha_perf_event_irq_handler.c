
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct hw_perf_event {int last_period; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {int n_events; int* current_idx; int idx_mask; struct perf_event** event; } ;
struct TYPE_2__ {unsigned long num_pmcs; scalar_t__* pmc_max_period; } ;


 int PERFMON_CMD_DISABLE ;
 int PERFMON_CMD_ENABLE ;
 int __this_cpu_inc (int ) ;
 scalar_t__ alpha_perf_event_set_period (struct perf_event*,struct hw_perf_event*,int) ;
 int alpha_perf_event_update (struct perf_event*,struct hw_perf_event*,int,scalar_t__) ;
 TYPE_1__* alpha_pmu ;
 int alpha_pmu_stop (struct perf_event*,int ) ;
 int cpu_hw_events ;
 int irq_err_count ;
 int irq_pmi_count ;
 scalar_t__ perf_event_overflow (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ;
 int perf_sample_data_init (struct perf_sample_data*,int ,int ) ;
 int pr_warning (char*,int) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 scalar_t__ unlikely (int) ;
 int wrperfmon (int ,int ) ;

__attribute__((used)) static void alpha_perf_event_irq_handler(unsigned long la_ptr,
     struct pt_regs *regs)
{
 struct cpu_hw_events *cpuc;
 struct perf_sample_data data;
 struct perf_event *event;
 struct hw_perf_event *hwc;
 int idx, j;

 __this_cpu_inc(irq_pmi_count);
 cpuc = this_cpu_ptr(&cpu_hw_events);






 wrperfmon(PERFMON_CMD_DISABLE, cpuc->idx_mask);


 if (unlikely(la_ptr >= alpha_pmu->num_pmcs)) {

  irq_err_count++;
  pr_warning("PMI: silly index %ld\n", la_ptr);
  wrperfmon(PERFMON_CMD_ENABLE, cpuc->idx_mask);
  return;
 }

 idx = la_ptr;

 for (j = 0; j < cpuc->n_events; j++) {
  if (cpuc->current_idx[j] == idx)
   break;
 }

 if (unlikely(j == cpuc->n_events)) {

  wrperfmon(PERFMON_CMD_ENABLE, cpuc->idx_mask);
  return;
 }

 event = cpuc->event[j];

 if (unlikely(!event)) {

  irq_err_count++;
  pr_warning("PMI: No event at index %d!\n", idx);
  wrperfmon(PERFMON_CMD_ENABLE, cpuc->idx_mask);
  return;
 }

 hwc = &event->hw;
 alpha_perf_event_update(event, hwc, idx, alpha_pmu->pmc_max_period[idx]+1);
 perf_sample_data_init(&data, 0, hwc->last_period);

 if (alpha_perf_event_set_period(event, hwc, idx)) {
  if (perf_event_overflow(event, &data, regs)) {



   alpha_pmu_stop(event, 0);
  }
 }
 wrperfmon(PERFMON_CMD_ENABLE, cpuc->idx_mask);

 return;
}
