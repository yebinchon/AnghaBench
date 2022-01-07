
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read; void* stop; int start; void* del; int add; int event_init; int commit_txn; int cancel_txn; int start_txn; int capabilities; int ** attr_groups; int task_ctx_nr; } ;
struct imc_pmu {int domain; int ** attr_groups; TYPE_1__ pmu; } ;


 size_t IMC_CPUMASK_ATTR ;




 size_t IMC_FORMAT_ATTR ;
 int PERF_PMU_CAP_NO_EXCLUDE ;
 int core_imc_event_init ;
 int imc_event_add ;
 int imc_event_start ;
 void* imc_event_stop ;
 int imc_event_update ;
 int imc_format_group ;
 int imc_pmu_cpumask_attr_group ;
 int nest_imc_event_init ;
 int perf_invalid_context ;
 int thread_imc_event_add ;
 void* thread_imc_event_del ;
 int thread_imc_event_init ;
 int thread_imc_pmu_cancel_txn ;
 int thread_imc_pmu_commit_txn ;
 int thread_imc_pmu_start_txn ;
 int trace_imc_event_add ;
 void* trace_imc_event_del ;
 int trace_imc_event_init ;
 int trace_imc_event_read ;
 int trace_imc_event_start ;
 void* trace_imc_event_stop ;
 int trace_imc_format_group ;

__attribute__((used)) static int update_pmu_ops(struct imc_pmu *pmu)
{
 pmu->pmu.task_ctx_nr = perf_invalid_context;
 pmu->pmu.add = imc_event_add;
 pmu->pmu.del = imc_event_stop;
 pmu->pmu.start = imc_event_start;
 pmu->pmu.stop = imc_event_stop;
 pmu->pmu.read = imc_event_update;
 pmu->pmu.attr_groups = pmu->attr_groups;
 pmu->pmu.capabilities = PERF_PMU_CAP_NO_EXCLUDE;
 pmu->attr_groups[IMC_FORMAT_ATTR] = &imc_format_group;

 switch (pmu->domain) {
 case 130:
  pmu->pmu.event_init = nest_imc_event_init;
  pmu->attr_groups[IMC_CPUMASK_ATTR] = &imc_pmu_cpumask_attr_group;
  break;
 case 131:
  pmu->pmu.event_init = core_imc_event_init;
  pmu->attr_groups[IMC_CPUMASK_ATTR] = &imc_pmu_cpumask_attr_group;
  break;
 case 129:
  pmu->pmu.event_init = thread_imc_event_init;
  pmu->pmu.add = thread_imc_event_add;
  pmu->pmu.del = thread_imc_event_del;
  pmu->pmu.start_txn = thread_imc_pmu_start_txn;
  pmu->pmu.cancel_txn = thread_imc_pmu_cancel_txn;
  pmu->pmu.commit_txn = thread_imc_pmu_commit_txn;
  break;
 case 128:
  pmu->pmu.event_init = trace_imc_event_init;
  pmu->pmu.add = trace_imc_event_add;
  pmu->pmu.del = trace_imc_event_del;
  pmu->pmu.start = trace_imc_event_start;
  pmu->pmu.stop = trace_imc_event_stop;
  pmu->pmu.read = trace_imc_event_read;
  pmu->attr_groups[IMC_FORMAT_ATTR] = &trace_imc_format_group;
 default:
  break;
 }

 return 0;
}
