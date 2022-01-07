
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct pmu {int dummy; } ;
struct perf_event {TYPE_2__* ctx; } ;
struct pebs_basic {int dummy; } ;
struct cpu_hw_events {int n_pebs; int pebs_data_cfg; int pebs_record_size; } ;
struct TYPE_4__ {scalar_t__ pebs_baseline; } ;
struct TYPE_6__ {TYPE_1__ intel_cap; } ;
struct TYPE_5__ {struct pmu* pmu; } ;


 int adaptive_pebs_record_size_update () ;
 int pebs_needs_sched_cb (struct cpu_hw_events*) ;
 int pebs_update_adaptive_cfg (struct perf_event*) ;
 int pebs_update_threshold (struct cpu_hw_events*) ;
 int perf_sched_cb_dec (struct pmu*) ;
 int perf_sched_cb_inc (struct pmu*) ;
 TYPE_3__ x86_pmu ;

__attribute__((used)) static void
pebs_update_state(bool needed_cb, struct cpu_hw_events *cpuc,
    struct perf_event *event, bool add)
{
 struct pmu *pmu = event->ctx->pmu;





 bool update = cpuc->n_pebs == 1;

 if (needed_cb != pebs_needs_sched_cb(cpuc)) {
  if (!needed_cb)
   perf_sched_cb_inc(pmu);
  else
   perf_sched_cb_dec(pmu);

  update = 1;
 }





 if (x86_pmu.intel_cap.pebs_baseline && add) {
  u64 pebs_data_cfg;


  if (cpuc->n_pebs == 1) {
   cpuc->pebs_data_cfg = 0;
   cpuc->pebs_record_size = sizeof(struct pebs_basic);
  }

  pebs_data_cfg = pebs_update_adaptive_cfg(event);


  if (pebs_data_cfg & ~cpuc->pebs_data_cfg) {
   cpuc->pebs_data_cfg |= pebs_data_cfg;
   adaptive_pebs_record_size_update();
   update = 1;
  }
 }

 if (update)
  pebs_update_threshold(cpuc);
}
