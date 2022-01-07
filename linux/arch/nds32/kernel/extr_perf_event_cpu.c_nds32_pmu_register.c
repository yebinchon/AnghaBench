
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nds32_pmu {int name; int pmu; int num_events; TYPE_1__* plat_device; } ;
struct TYPE_2__ {int dev; } ;


 int nds32_init (struct nds32_pmu*) ;
 int perf_pmu_register (int *,int ,int) ;
 int pm_runtime_enable (int *) ;
 int pr_info (char*,int ,int ) ;

int nds32_pmu_register(struct nds32_pmu *nds32_pmu, int type)
{
 nds32_init(nds32_pmu);
 pm_runtime_enable(&nds32_pmu->plat_device->dev);
 pr_info("enabled with %s PMU driver, %d counters available\n",
  nds32_pmu->name, nds32_pmu->num_events);
 return perf_pmu_register(&nds32_pmu->pmu, nds32_pmu->name, type);
}
