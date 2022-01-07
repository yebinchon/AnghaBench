
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct imc_mem_info {int id; int * vbase; } ;
struct TYPE_4__ {struct imc_mem_info* mem_info; } ;
struct TYPE_3__ {int id; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int OPAL_IMC_COUNTERS_CORE ;
 int __GFP_NOWARN ;
 int __GFP_THISNODE ;
 int __GFP_ZERO ;
 int __pa (void*) ;
 struct page* alloc_pages_node (int,int,int ) ;
 TYPE_2__* core_imc_pmu ;
 TYPE_1__* core_imc_refc ;
 int cpu_to_node (int) ;
 int free_pages (int ,int ) ;
 int get_hard_smp_processor_id (int) ;
 int get_order (int) ;
 int mutex_init (int *) ;
 int opal_imc_counters_init (int ,int ,int ) ;
 int * page_address (struct page*) ;
 int threads_per_core ;

__attribute__((used)) static int core_imc_mem_init(int cpu, int size)
{
 int nid, rc = 0, core_id = (cpu / threads_per_core);
 struct imc_mem_info *mem_info;
 struct page *page;





 nid = cpu_to_node(cpu);
 mem_info = &core_imc_pmu->mem_info[core_id];
 mem_info->id = core_id;


 page = alloc_pages_node(nid,
    GFP_KERNEL | __GFP_ZERO | __GFP_THISNODE |
    __GFP_NOWARN, get_order(size));
 if (!page)
  return -ENOMEM;
 mem_info->vbase = page_address(page);


 core_imc_refc[core_id].id = core_id;
 mutex_init(&core_imc_refc[core_id].lock);

 rc = opal_imc_counters_init(OPAL_IMC_COUNTERS_CORE,
    __pa((void *)mem_info->vbase),
    get_hard_smp_processor_id(cpu));
 if (rc) {
  free_pages((u64)mem_info->vbase, get_order(size));
  mem_info->vbase = ((void*)0);
 }

 return rc;
}
