
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct imc_pmu_ref {scalar_t__ refc; int lock; } ;


 int OPAL_IMC_COUNTERS_TRACE ;
 int SPRN_LDBAR ;
 struct imc_pmu_ref* core_imc_refc ;
 int get_hard_smp_processor_id (int) ;
 int mtspr (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ opal_imc_counters_stop (int ,int ) ;
 int pr_err (char*,int) ;
 int smp_processor_id () ;
 int threads_per_core ;
 int trace_imc_event_stop (struct perf_event*,int) ;
 struct imc_pmu_ref* trace_imc_refc ;

__attribute__((used)) static void trace_imc_event_del(struct perf_event *event, int flags)
{
 int core_id = smp_processor_id() / threads_per_core;
 struct imc_pmu_ref *ref = ((void*)0);

 if (core_imc_refc)
  ref = &core_imc_refc[core_id];
 if (!ref) {

  if (trace_imc_refc)
   ref = &trace_imc_refc[core_id];
  if (!ref)
   return;
 }
 mtspr(SPRN_LDBAR, 0);
 mutex_lock(&ref->lock);
 ref->refc--;
 if (ref->refc == 0) {
  if (opal_imc_counters_stop(OPAL_IMC_COUNTERS_TRACE,
    get_hard_smp_processor_id(smp_processor_id()))) {
   mutex_unlock(&ref->lock);
   pr_err("trace-imc: Unable to stop the counters for core %d\n", core_id);
   return;
  }
 } else if (ref->refc < 0) {
  ref->refc = 0;
 }
 mutex_unlock(&ref->lock);
 trace_imc_event_stop(event, flags);
}
