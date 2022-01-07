
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int hwicap_remove (int *) ;

__attribute__((used)) static int hwicap_drv_remove(struct platform_device *pdev)
{
 return hwicap_remove(&pdev->dev);
}
