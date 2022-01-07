
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct led_nu801_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct led_nu801_platform_data {int num_controllers; int * template; } ;
struct led_nu801_data {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct led_nu801_data*) ;
 struct led_nu801_data* kzalloc (int,int ) ;
 int led_nu801_create_chain (int *,struct led_nu801_data*,TYPE_1__*) ;
 int led_nu801_delete_chain (struct led_nu801_data*) ;
 struct led_nu801_data* leds_nu801_create_of (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct led_nu801_data*) ;

__attribute__((used)) static int led_nu801_probe(struct platform_device *pdev)
{
 struct led_nu801_platform_data *pdata = pdev->dev.platform_data;
 struct led_nu801_data *controllers;
 int i, ret = 0;

 if (!(pdata && pdata->num_controllers)) {
  controllers = leds_nu801_create_of(pdev);
  if (!controllers)
   return -ENODEV;
 }

 controllers = kzalloc(sizeof(struct led_nu801_data) *
         pdata->num_controllers, GFP_KERNEL);
 if (!controllers)
  return -ENOMEM;

 for (i = 0; i < pdata->num_controllers; i++) {
  ret = led_nu801_create_chain(&pdata->template[i],
           &controllers[i],
           &pdev->dev);
  if (ret < 0)
   goto err;
 }

 platform_set_drvdata(pdev, controllers);

 return 0;

err:
 for (i = i - 1; i >= 0; i--)
  led_nu801_delete_chain(&controllers[i]);

 kfree(controllers);

 return ret;
}
