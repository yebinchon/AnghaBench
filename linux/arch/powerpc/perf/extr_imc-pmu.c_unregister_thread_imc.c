
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pmu; } ;


 int imc_common_cpuhp_mem_free (TYPE_1__*) ;
 int imc_common_mem_free (TYPE_1__*) ;
 int perf_pmu_unregister (int *) ;
 TYPE_1__* thread_imc_pmu ;

void unregister_thread_imc(void)
{
 imc_common_cpuhp_mem_free(thread_imc_pmu);
 imc_common_mem_free(thread_imc_pmu);
 perf_pmu_unregister(&thread_imc_pmu->pmu);
}
