
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {scalar_t__ idx; int state; int config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {scalar_t__ n_added; int n_events; scalar_t__* current_idx; int idx_mask; struct perf_event** event; int config; } ;


 int PERF_HES_STOPPED ;
 scalar_t__ PMC_NO_INDEX ;
 int alpha_perf_event_set_period (struct perf_event*,struct hw_perf_event*,int) ;
 int alpha_perf_event_update (struct perf_event*,struct hw_perf_event*,scalar_t__,int ) ;

__attribute__((used)) static void maybe_change_configuration(struct cpu_hw_events *cpuc)
{
 int j;

 if (cpuc->n_added == 0)
  return;


 for (j = 0; j < cpuc->n_events; j++) {
  struct perf_event *pe = cpuc->event[j];

  if (cpuc->current_idx[j] != PMC_NO_INDEX &&
   cpuc->current_idx[j] != pe->hw.idx) {
   alpha_perf_event_update(pe, &pe->hw, cpuc->current_idx[j], 0);
   cpuc->current_idx[j] = PMC_NO_INDEX;
  }
 }


 cpuc->idx_mask = 0;
 for (j = 0; j < cpuc->n_events; j++) {
  struct perf_event *pe = cpuc->event[j];
  struct hw_perf_event *hwc = &pe->hw;
  int idx = hwc->idx;

  if (cpuc->current_idx[j] == PMC_NO_INDEX) {
   alpha_perf_event_set_period(pe, hwc, idx);
   cpuc->current_idx[j] = idx;
  }

  if (!(hwc->state & PERF_HES_STOPPED))
   cpuc->idx_mask |= (1<<cpuc->current_idx[j]);
 }
 cpuc->config = cpuc->event[0]->hw.config_base;
}
