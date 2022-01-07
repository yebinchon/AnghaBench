
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int csky_pmu_device_probe (struct platform_device*,int ) ;
 int csky_pmu_of_device_ids ;

__attribute__((used)) static int csky_pmu_dev_probe(struct platform_device *pdev)
{
 return csky_pmu_device_probe(pdev, csky_pmu_of_device_ids);
}
