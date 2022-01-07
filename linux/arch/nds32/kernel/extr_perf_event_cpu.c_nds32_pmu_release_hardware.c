
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nds32_pmu {TYPE_1__* plat_device; int (* free_irq ) (struct nds32_pmu*) ;} ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_put_sync (int *) ;
 int stub1 (struct nds32_pmu*) ;

__attribute__((used)) static void nds32_pmu_release_hardware(struct nds32_pmu *nds32_pmu)
{
 nds32_pmu->free_irq(nds32_pmu);
 pm_runtime_put_sync(&nds32_pmu->plat_device->dev);
}
