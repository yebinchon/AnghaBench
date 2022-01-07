
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int arm_pmu_device_probe (struct platform_device*,int ,int *) ;
 int armv8_pmu_of_device_ids ;

__attribute__((used)) static int armv8_pmu_device_probe(struct platform_device *pdev)
{
 return arm_pmu_device_probe(pdev, armv8_pmu_of_device_ids, ((void*)0));
}
