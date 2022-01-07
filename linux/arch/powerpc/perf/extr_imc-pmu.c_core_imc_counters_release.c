
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int cpu; } ;
struct imc_pmu_ref {scalar_t__ refc; int lock; } ;


 int OPAL_IMC_COUNTERS_CORE ;
 int WARN (int,char*) ;
 struct imc_pmu_ref* core_imc_refc ;
 int get_hard_smp_processor_id (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opal_imc_counters_stop (int ,int ) ;
 int pr_err (char*,int) ;
 int threads_per_core ;

__attribute__((used)) static void core_imc_counters_release(struct perf_event *event)
{
 int rc, core_id;
 struct imc_pmu_ref *ref;

 if (event->cpu < 0)
  return;






 core_id = event->cpu / threads_per_core;


 ref = &core_imc_refc[core_id];
 if (!ref)
  return;

 mutex_lock(&ref->lock);
 if (ref->refc == 0) {
  mutex_unlock(&ref->lock);
  return;
 }
 ref->refc--;
 if (ref->refc == 0) {
  rc = opal_imc_counters_stop(OPAL_IMC_COUNTERS_CORE,
         get_hard_smp_processor_id(event->cpu));
  if (rc) {
   mutex_unlock(&ref->lock);
   pr_err("IMC: Unable to stop the counters for core %d\n", core_id);
   return;
  }
 } else if (ref->refc < 0) {
  WARN(1, "core-imc: Invalid event reference count\n");
  ref->refc = 0;
 }
 mutex_unlock(&ref->lock);
}
