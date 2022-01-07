
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* devices ;
 int nr_devices ;
 int platform_device_put (scalar_t__) ;

__attribute__((used)) static void w1_gpio_custom_cleanup(void)
{
 int i;

 for (i = 0; i < nr_devices; i++)
  if (devices[i])
   platform_device_put(devices[i]);
}
