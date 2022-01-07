
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE ;
 int cpuhp_setup_state (int ,char*,int ,int ) ;
 int ppc_core_imc_cpu_offline ;
 int ppc_core_imc_cpu_online ;

__attribute__((used)) static int core_imc_pmu_cpumask_init(void)
{
 return cpuhp_setup_state(CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE,
     "perf/powerpc/imc_core:online",
     ppc_core_imc_cpu_online,
     ppc_core_imc_cpu_offline);
}
