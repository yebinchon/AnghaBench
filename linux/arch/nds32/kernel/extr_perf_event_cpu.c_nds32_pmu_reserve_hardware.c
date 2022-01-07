
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct nds32_pmu {int (* request_irq ) (struct nds32_pmu*,int ) ;struct platform_device* plat_device; } ;


 int ENODEV ;
 int nds32_pmu_dispatch_irq ;
 int nds32_pmu_release_hardware (struct nds32_pmu*) ;
 int pm_runtime_get_sync (int *) ;
 int stub1 (struct nds32_pmu*,int ) ;

__attribute__((used)) static int nds32_pmu_reserve_hardware(struct nds32_pmu *nds32_pmu)
{
 int err;
 struct platform_device *pmu_device = nds32_pmu->plat_device;

 if (!pmu_device)
  return -ENODEV;

 pm_runtime_get_sync(&pmu_device->dev);
 err = nds32_pmu->request_irq(nds32_pmu, nds32_pmu_dispatch_irq);
 if (err) {
  nds32_pmu_release_hardware(nds32_pmu);
  return err;
 }

 return 0;
}
