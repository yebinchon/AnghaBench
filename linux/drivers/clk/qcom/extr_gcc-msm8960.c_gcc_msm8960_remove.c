
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int platform_device_unregister (struct platform_device*) ;
 struct platform_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int gcc_msm8960_remove(struct platform_device *pdev)
{
 struct platform_device *tsens = platform_get_drvdata(pdev);

 platform_device_unregister(tsens);

 return 0;
}
