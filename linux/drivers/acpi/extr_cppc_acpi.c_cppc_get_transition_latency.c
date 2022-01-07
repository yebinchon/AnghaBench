
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cppc_pcc_data {int pcc_mpar; int pcc_nominal; int pcc_mrtt; } ;
struct cpc_register_resource {int dummy; } ;
struct cpc_desc {struct cpc_register_resource* cpc_regs; } ;


 int CPC_IN_PCC (struct cpc_register_resource*) ;
 unsigned int CPUFREQ_ETERNAL ;
 size_t DESIRED_PERF ;
 int cpc_desc_ptr ;
 int cpu_pcc_subspace_idx ;
 unsigned int max (unsigned int,int) ;
 struct cppc_pcc_data** pcc_data ;
 void* per_cpu (int ,int) ;

unsigned int cppc_get_transition_latency(int cpu_num)
{
 unsigned int latency_ns = 0;
 struct cpc_desc *cpc_desc;
 struct cpc_register_resource *desired_reg;
 int pcc_ss_id = per_cpu(cpu_pcc_subspace_idx, cpu_num);
 struct cppc_pcc_data *pcc_ss_data;

 cpc_desc = per_cpu(cpc_desc_ptr, cpu_num);
 if (!cpc_desc)
  return CPUFREQ_ETERNAL;

 desired_reg = &cpc_desc->cpc_regs[DESIRED_PERF];
 if (!CPC_IN_PCC(desired_reg))
  return CPUFREQ_ETERNAL;

 if (pcc_ss_id < 0)
  return CPUFREQ_ETERNAL;

 pcc_ss_data = pcc_data[pcc_ss_id];
 if (pcc_ss_data->pcc_mpar)
  latency_ns = 60 * (1000 * 1000 * 1000 / pcc_ss_data->pcc_mpar);

 latency_ns = max(latency_ns, pcc_ss_data->pcc_nominal * 1000);
 latency_ns = max(latency_ns, pcc_ss_data->pcc_mrtt * 1000);

 return latency_ns;
}
