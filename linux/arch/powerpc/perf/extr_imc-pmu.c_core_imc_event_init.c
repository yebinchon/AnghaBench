
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_7__ {int idx; int event_base; scalar_t__ sample_period; } ;
struct TYPE_5__ {int config; scalar_t__ type; } ;
struct perf_event {int cpu; int destroy; TYPE_3__ hw; TYPE_2__* pmu; TYPE_1__ attr; } ;
struct imc_pmu_ref {scalar_t__ refc; int lock; } ;
struct imc_pmu {int counter_mem_size; } ;
struct imc_mem_info {scalar_t__ vbase; } ;
struct TYPE_8__ {struct imc_mem_info* mem_info; } ;
struct TYPE_6__ {scalar_t__ type; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int IMC_EVENT_OFFSET_MASK ;
 int OPAL_IMC_COUNTERS_CORE ;
 int core_imc_counters_release ;
 TYPE_4__* core_imc_pmu ;
 struct imc_pmu_ref* core_imc_refc ;
 int get_hard_smp_processor_id (int) ;
 struct imc_pmu* imc_event_to_pmu (struct perf_event*) ;
 int is_core_imc_mem_inited (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opal_imc_counters_start (int ,int ) ;
 int pr_err (char*,int) ;
 int threads_per_core ;

__attribute__((used)) static int core_imc_event_init(struct perf_event *event)
{
 int core_id, rc;
 u64 config = event->attr.config;
 struct imc_mem_info *pcmi;
 struct imc_pmu *pmu;
 struct imc_pmu_ref *ref;

 if (event->attr.type != event->pmu->type)
  return -ENOENT;


 if (event->hw.sample_period)
  return -EINVAL;

 if (event->cpu < 0)
  return -EINVAL;

 event->hw.idx = -1;
 pmu = imc_event_to_pmu(event);


 if (((config & IMC_EVENT_OFFSET_MASK) > pmu->counter_mem_size))
  return -EINVAL;

 if (!is_core_imc_mem_inited(event->cpu))
  return -ENODEV;

 core_id = event->cpu / threads_per_core;
 pcmi = &core_imc_pmu->mem_info[core_id];
 if ((!pcmi->vbase))
  return -ENODEV;


 ref = &core_imc_refc[core_id];
 if (!ref)
  return -EINVAL;







 mutex_lock(&ref->lock);
 if (ref->refc == 0) {
  rc = opal_imc_counters_start(OPAL_IMC_COUNTERS_CORE,
          get_hard_smp_processor_id(event->cpu));
  if (rc) {
   mutex_unlock(&ref->lock);
   pr_err("core-imc: Unable to start the counters for core %d\n",
         core_id);
   return rc;
  }
 }
 ++ref->refc;
 mutex_unlock(&ref->lock);

 event->hw.event_base = (u64)pcmi->vbase + (config & IMC_EVENT_OFFSET_MASK);
 event->destroy = core_imc_counters_release;
 return 0;
}
