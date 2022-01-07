
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int device_initialize (int *) ;
 int platform_device_add (struct platform_device*) ;
 int setup_pdev_dma_masks (struct platform_device*) ;

int platform_device_register(struct platform_device *pdev)
{
 device_initialize(&pdev->dev);
 setup_pdev_dma_masks(pdev);
 return platform_device_add(pdev);
}
