
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int hw_events; struct platform_device* plat_device; } ;


 TYPE_1__ csky_pmu ;
 int free_percpu_irq (int,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int this_cpu_ptr (int ) ;

__attribute__((used)) static void csky_pmu_free_irq(void)
{
 int irq;
 struct platform_device *pmu_device = csky_pmu.plat_device;

 irq = platform_get_irq(pmu_device, 0);
 if (irq >= 0)
  free_percpu_irq(irq, this_cpu_ptr(csky_pmu.hw_events));
}
