
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_device {int shutdown; } ;


 int gpiod_set_value_cansleep (int ,int) ;

__attribute__((used)) static int bcm_gpio_set_shutdown(struct bcm_device *dev, bool powered)
{
 gpiod_set_value_cansleep(dev->shutdown, powered);
 return 0;
}
