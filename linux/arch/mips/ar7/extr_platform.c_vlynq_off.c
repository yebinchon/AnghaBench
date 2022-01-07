
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct plat_vlynq_data* platform_data; } ;
struct vlynq_device {TYPE_1__ dev; } ;
struct plat_vlynq_data {int reset_bit; int gpio_bit; } ;


 int ar7_device_disable (int ) ;
 int ar7_gpio_disable (int ) ;
 int gpio_free (int ) ;

__attribute__((used)) static void vlynq_off(struct vlynq_device *dev)
{
 struct plat_vlynq_data *pdata = dev->dev.platform_data;

 ar7_gpio_disable(pdata->gpio_bit);
 gpio_free(pdata->gpio_bit);
 ar7_device_disable(pdata->reset_bit);
}
