
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int pm_runtime_disable (int *) ;

__attribute__((used)) static int stm32_rng_remove(struct platform_device *ofdev)
{
 pm_runtime_disable(&ofdev->dev);

 return 0;
}
