
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imc_pmu {scalar_t__ domain; } ;


 int CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE ;
 int CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE ;
 int CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE ;
 int CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE ;
 scalar_t__ IMC_DOMAIN_CORE ;
 scalar_t__ IMC_DOMAIN_NEST ;
 scalar_t__ IMC_DOMAIN_THREAD ;
 scalar_t__ IMC_DOMAIN_TRACE ;
 int cleanup_all_core_imc_memory () ;
 int cleanup_all_thread_imc_memory () ;
 int cleanup_all_trace_imc_memory () ;
 int cpuhp_remove_state (int ) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * nest_imc_refc ;
 int nest_init_lock ;
 int nest_pmus ;
 int * per_nest_pmu_arr ;

__attribute__((used)) static void imc_common_cpuhp_mem_free(struct imc_pmu *pmu_ptr)
{
 if (pmu_ptr->domain == IMC_DOMAIN_NEST) {
  mutex_lock(&nest_init_lock);
  if (nest_pmus == 1) {
   cpuhp_remove_state(CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE);
   kfree(nest_imc_refc);
   kfree(per_nest_pmu_arr);
   per_nest_pmu_arr = ((void*)0);
  }

  if (nest_pmus > 0)
   nest_pmus--;
  mutex_unlock(&nest_init_lock);
 }


 if (pmu_ptr->domain == IMC_DOMAIN_CORE) {
  cpuhp_remove_state(CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE);
  cleanup_all_core_imc_memory();
 }


 if (pmu_ptr->domain == IMC_DOMAIN_THREAD) {
  cpuhp_remove_state(CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE);
  cleanup_all_thread_imc_memory();
 }

 if (pmu_ptr->domain == IMC_DOMAIN_TRACE) {
  cpuhp_remove_state(CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE);
  cleanup_all_trace_imc_memory();
 }
}
