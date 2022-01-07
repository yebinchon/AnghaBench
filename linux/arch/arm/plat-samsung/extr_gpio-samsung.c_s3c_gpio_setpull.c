
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int base; } ;
struct samsung_gpio_chip {TYPE_1__ chip; } ;
typedef int samsung_gpio_pull_t ;


 int EINVAL ;
 int samsung_gpio_do_setpull (struct samsung_gpio_chip*,int,int ) ;
 int samsung_gpio_lock (struct samsung_gpio_chip*,unsigned long) ;
 int samsung_gpio_unlock (struct samsung_gpio_chip*,unsigned long) ;
 struct samsung_gpio_chip* samsung_gpiolib_getchip (unsigned int) ;

int s3c_gpio_setpull(unsigned int pin, samsung_gpio_pull_t pull)
{
 struct samsung_gpio_chip *chip = samsung_gpiolib_getchip(pin);
 unsigned long flags;
 int offset, ret;

 if (!chip)
  return -EINVAL;

 offset = pin - chip->chip.base;

 samsung_gpio_lock(chip, flags);
 ret = samsung_gpio_do_setpull(chip, offset, pull);
 samsung_gpio_unlock(chip, flags);

 return ret;
}
