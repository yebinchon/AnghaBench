
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct imc_pmu {int domain; TYPE_1__ pmu; } ;
struct device_node {int dummy; } ;


 int EINVAL ;




 int cleanup_all_core_imc_memory () ;
 int cleanup_all_thread_imc_memory () ;
 int cleanup_all_trace_imc_memory () ;
 int core_imc_pmu_cpumask_init () ;
 int imc_common_cpuhp_mem_free (struct imc_pmu*) ;
 int imc_common_mem_free (struct imc_pmu*) ;
 int imc_mem_init (struct imc_pmu*,struct device_node*,int) ;
 int init_nest_pmu_ref () ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * nest_imc_refc ;
 int nest_init_lock ;
 int nest_pmu_cpumask_init () ;
 int nest_pmus ;
 int * per_nest_pmu_arr ;
 int perf_pmu_register (TYPE_1__*,int ,int) ;
 int pr_debug (char*,int ) ;
 int thread_imc_cpu_init () ;
 int trace_imc_cpu_init () ;
 int update_events_in_group (struct device_node*,struct imc_pmu*) ;
 int update_pmu_ops (struct imc_pmu*) ;

int init_imc_pmu(struct device_node *parent, struct imc_pmu *pmu_ptr, int pmu_idx)
{
 int ret;

 ret = imc_mem_init(pmu_ptr, parent, pmu_idx);
 if (ret)
  goto err_free_mem;

 switch (pmu_ptr->domain) {
 case 130:






  mutex_lock(&nest_init_lock);
  if (nest_pmus == 0) {
   ret = init_nest_pmu_ref();
   if (ret) {
    mutex_unlock(&nest_init_lock);
    kfree(per_nest_pmu_arr);
    per_nest_pmu_arr = ((void*)0);
    goto err_free_mem;
   }

   ret = nest_pmu_cpumask_init();
   if (ret) {
    mutex_unlock(&nest_init_lock);
    kfree(nest_imc_refc);
    kfree(per_nest_pmu_arr);
    per_nest_pmu_arr = ((void*)0);
    goto err_free_mem;
   }
  }
  nest_pmus++;
  mutex_unlock(&nest_init_lock);
  break;
 case 131:
  ret = core_imc_pmu_cpumask_init();
  if (ret) {
   cleanup_all_core_imc_memory();
   goto err_free_mem;
  }

  break;
 case 129:
  ret = thread_imc_cpu_init();
  if (ret) {
   cleanup_all_thread_imc_memory();
   goto err_free_mem;
  }

  break;
 case 128:
  ret = trace_imc_cpu_init();
  if (ret) {
   cleanup_all_trace_imc_memory();
   goto err_free_mem;
  }

  break;
 default:
  return -EINVAL;
 }

 ret = update_events_in_group(parent, pmu_ptr);
 if (ret)
  goto err_free_cpuhp_mem;

 ret = update_pmu_ops(pmu_ptr);
 if (ret)
  goto err_free_cpuhp_mem;

 ret = perf_pmu_register(&pmu_ptr->pmu, pmu_ptr->pmu.name, -1);
 if (ret)
  goto err_free_cpuhp_mem;

 pr_debug("%s performance monitor hardware support registered\n",
       pmu_ptr->pmu.name);

 return 0;

err_free_cpuhp_mem:
 imc_common_cpuhp_mem_free(pmu_ptr);
err_free_mem:
 imc_common_mem_free(pmu_ptr);
 return ret;
}
