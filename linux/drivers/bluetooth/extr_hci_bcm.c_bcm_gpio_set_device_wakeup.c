
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_device {int device_wakeup; } ;


 int gpiod_set_value_cansleep (int ,int) ;

__attribute__((used)) static int bcm_gpio_set_device_wakeup(struct bcm_device *dev, bool awake)
{
 gpiod_set_value_cansleep(dev->device_wakeup, awake);
 return 0;
}
