
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct imc_mem_info {scalar_t__ vbase; } ;
struct TYPE_2__ {int counter_mem_size; struct imc_mem_info* mem_info; } ;


 int DIV_ROUND_UP (int ,int ) ;
 TYPE_1__* core_imc_pmu ;
 struct imc_mem_info* core_imc_refc ;
 int free_pages (int ,int ) ;
 int get_order (int) ;
 int kfree (struct imc_mem_info*) ;
 int num_possible_cpus () ;
 int threads_per_core ;

__attribute__((used)) static void cleanup_all_core_imc_memory(void)
{
 int i, nr_cores = DIV_ROUND_UP(num_possible_cpus(), threads_per_core);
 struct imc_mem_info *ptr = core_imc_pmu->mem_info;
 int size = core_imc_pmu->counter_mem_size;


 for (i = 0; i < nr_cores; i++) {
  if (ptr[i].vbase)
   free_pages((u64)ptr[i].vbase, get_order(size));
 }

 kfree(ptr);
 kfree(core_imc_refc);
}
