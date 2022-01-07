
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int IS_ERR_OR_NULL (struct platform_device*) ;
 int put_device (int *) ;

void platform_device_put(struct platform_device *pdev)
{
 if (!IS_ERR_OR_NULL(pdev))
  put_device(&pdev->dev);
}
