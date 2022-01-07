
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event {int dummy; } ;
struct imc_pmu_ref {scalar_t__ refc; int lock; } ;


 int EINVAL ;
 int OPAL_IMC_COUNTERS_TRACE ;
 int SPRN_LDBAR ;
 int THREAD_IMC_LDBAR_MASK ;
 int TRACE_IMC_ENABLE ;
 struct imc_pmu_ref* core_imc_refc ;
 int get_hard_smp_processor_id (int) ;
 int get_trace_imc_event_base_addr () ;
 int mtspr (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ opal_imc_counters_start (int ,int ) ;
 int pr_err (char*,int) ;
 int smp_processor_id () ;
 int threads_per_core ;
 struct imc_pmu_ref* trace_imc_refc ;

__attribute__((used)) static int trace_imc_event_add(struct perf_event *event, int flags)
{
 int core_id = smp_processor_id() / threads_per_core;
 struct imc_pmu_ref *ref = ((void*)0);
 u64 local_mem, ldbar_value;


 local_mem = get_trace_imc_event_base_addr();
 ldbar_value = ((u64)local_mem & THREAD_IMC_LDBAR_MASK) | TRACE_IMC_ENABLE;

 if (core_imc_refc)
  ref = &core_imc_refc[core_id];
 if (!ref) {

  if (trace_imc_refc)
   ref = &trace_imc_refc[core_id];
  if (!ref)
   return -EINVAL;
 }
 mtspr(SPRN_LDBAR, ldbar_value);
 mutex_lock(&ref->lock);
 if (ref->refc == 0) {
  if (opal_imc_counters_start(OPAL_IMC_COUNTERS_TRACE,
    get_hard_smp_processor_id(smp_processor_id()))) {
   mutex_unlock(&ref->lock);
   pr_err("trace-imc: Unable to start the counters for core %d\n", core_id);
   mtspr(SPRN_LDBAR, 0);
   return -EINVAL;
  }
 }
 ++ref->refc;
 mutex_unlock(&ref->lock);

 return 0;
}
