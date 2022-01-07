
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 int dptf_power_attribute_group ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int dptf_power_remove(struct platform_device *pdev)
{

 sysfs_remove_group(&pdev->dev.kobj, &dptf_power_attribute_group);

 return 0;
}
