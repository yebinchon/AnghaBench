
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct led_nu801_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct led_nu801_platform_data {int num_controllers; } ;
struct led_nu801_data {int dummy; } ;


 int kfree (struct led_nu801_data*) ;
 int led_nu801_delete_chain (struct led_nu801_data*) ;
 struct led_nu801_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int led_nu801_remove(struct platform_device *pdev)
{
 int i;
 struct led_nu801_platform_data *pdata = pdev->dev.platform_data;
 struct led_nu801_data *controllers;

 controllers = platform_get_drvdata(pdev);

 for (i = 0; i < pdata->num_controllers; i++)
  led_nu801_delete_chain(&controllers[i]);

 kfree(controllers);

 return 0;
}
