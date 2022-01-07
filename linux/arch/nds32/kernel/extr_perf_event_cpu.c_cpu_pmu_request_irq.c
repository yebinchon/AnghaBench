
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int num_resources; } ;
struct nds32_pmu {struct platform_device* plat_device; } ;
typedef int irq_handler_t ;


 int ENODEV ;
 int IRQF_NOBALANCING ;
 int min (int ,int ) ;
 int num_possible_cpus () ;
 int platform_get_irq (struct platform_device*,int ) ;
 int pr_err (char*,...) ;
 int request_irq (int,int ,int ,char*,struct nds32_pmu*) ;

__attribute__((used)) static int cpu_pmu_request_irq(struct nds32_pmu *cpu_pmu, irq_handler_t handler)
{
 int err, irq, irqs;
 struct platform_device *pmu_device = cpu_pmu->plat_device;

 if (!pmu_device)
  return -ENODEV;

 irqs = min(pmu_device->num_resources, num_possible_cpus());
 if (irqs < 1) {
  pr_err("no irqs for PMUs defined\n");
  return -ENODEV;
 }

 irq = platform_get_irq(pmu_device, 0);
 err = request_irq(irq, handler, IRQF_NOBALANCING, "nds32-pfm",
     cpu_pmu);
 if (err) {
  pr_err("unable to request IRQ%d for NDS PMU counters\n",
         irq);
  return err;
 }
 return 0;
}
