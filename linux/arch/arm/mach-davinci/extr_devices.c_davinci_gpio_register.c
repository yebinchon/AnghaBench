
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_4__ {void* platform_data; } ;
struct TYPE_5__ {int num_resources; TYPE_1__ dev; struct resource* resource; } ;


 TYPE_2__ davinci_gpio_device ;
 int platform_device_register (TYPE_2__*) ;

int davinci_gpio_register(struct resource *res, int size, void *pdata)
{
 davinci_gpio_device.resource = res;
 davinci_gpio_device.num_resources = size;
 davinci_gpio_device.dev.platform_data = pdata;
 return platform_device_register(&davinci_gpio_device);
}
