
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b53_device {int reset_gpio; int current_page; } ;


 int gpio_set_value (int,int) ;
 int mdelay (int) ;

__attribute__((used)) static void b53_switch_reset_gpio(struct b53_device *dev)
{
 int gpio = dev->reset_gpio;

 if (gpio < 0)
  return;




 gpio_set_value(gpio, 0);
 mdelay(50);

 gpio_set_value(gpio, 1);
 mdelay(20);

 dev->current_page = 0xff;
}
