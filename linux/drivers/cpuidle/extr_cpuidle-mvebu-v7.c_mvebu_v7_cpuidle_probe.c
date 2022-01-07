
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device_id {scalar_t__ driver_data; } ;
struct TYPE_2__ {int platform_data; } ;
struct platform_device {TYPE_1__ dev; struct platform_device_id* id_entry; } ;
struct cpuidle_driver {int dummy; } ;


 int EINVAL ;
 int cpuidle_register (struct cpuidle_driver*,int *) ;
 int mvebu_v7_cpu_suspend ;

__attribute__((used)) static int mvebu_v7_cpuidle_probe(struct platform_device *pdev)
{
 const struct platform_device_id *id = pdev->id_entry;

 if (!id)
  return -EINVAL;

 mvebu_v7_cpu_suspend = pdev->dev.platform_data;

 return cpuidle_register((struct cpuidle_driver *)id->driver_data, ((void*)0));
}
