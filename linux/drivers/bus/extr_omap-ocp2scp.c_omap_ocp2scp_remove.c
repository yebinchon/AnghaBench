
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int device_for_each_child (int *,int *,int ) ;
 int ocp2scp_remove_devices ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int omap_ocp2scp_remove(struct platform_device *pdev)
{
 pm_runtime_disable(&pdev->dev);
 device_for_each_child(&pdev->dev, ((void*)0), ocp2scp_remove_devices);

 return 0;
}
