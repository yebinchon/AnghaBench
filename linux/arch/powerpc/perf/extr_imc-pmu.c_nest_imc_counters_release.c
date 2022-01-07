
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {scalar_t__ cpu; } ;
struct imc_pmu_ref {scalar_t__ refc; int lock; } ;


 int OPAL_IMC_COUNTERS_NEST ;
 int WARN (int,char*) ;
 int cpu_to_node (scalar_t__) ;
 int get_hard_smp_processor_id (scalar_t__) ;
 struct imc_pmu_ref* get_nest_pmu_ref (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opal_imc_counters_stop (int ,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static void nest_imc_counters_release(struct perf_event *event)
{
 int rc, node_id;
 struct imc_pmu_ref *ref;

 if (event->cpu < 0)
  return;

 node_id = cpu_to_node(event->cpu);







 ref = get_nest_pmu_ref(event->cpu);
 if (!ref)
  return;


 mutex_lock(&ref->lock);
 if (ref->refc == 0) {
  mutex_unlock(&ref->lock);
  return;
 }
 ref->refc--;
 if (ref->refc == 0) {
  rc = opal_imc_counters_stop(OPAL_IMC_COUNTERS_NEST,
         get_hard_smp_processor_id(event->cpu));
  if (rc) {
   mutex_unlock(&ref->lock);
   pr_err("nest-imc: Unable to stop the counters for core %d\n", node_id);
   return;
  }
 } else if (ref->refc < 0) {
  WARN(1, "nest-imc: Invalid event reference count\n");
  ref->refc = 0;
 }
 mutex_unlock(&ref->lock);
}
