
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tosa_bt_data {int gpio_reset; int gpio_pwr; } ;
struct rfkill {int dummy; } ;
struct TYPE_2__ {struct tosa_bt_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int gpio_free (int ) ;
 struct rfkill* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int rfkill_destroy (struct rfkill*) ;
 int rfkill_unregister (struct rfkill*) ;
 int tosa_bt_off (struct tosa_bt_data*) ;

__attribute__((used)) static int tosa_bt_remove(struct platform_device *dev)
{
 struct tosa_bt_data *data = dev->dev.platform_data;
 struct rfkill *rfk = platform_get_drvdata(dev);

 platform_set_drvdata(dev, ((void*)0));

 if (rfk) {
  rfkill_unregister(rfk);
  rfkill_destroy(rfk);
 }
 rfk = ((void*)0);

 tosa_bt_off(data);

 gpio_free(data->gpio_pwr);
 gpio_free(data->gpio_reset);

 return 0;
}
