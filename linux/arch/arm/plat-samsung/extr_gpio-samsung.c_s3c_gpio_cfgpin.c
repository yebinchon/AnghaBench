
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int base; } ;
struct samsung_gpio_chip {TYPE_1__ chip; } ;


 int EINVAL ;
 int samsung_gpio_do_setcfg (struct samsung_gpio_chip*,int,unsigned int) ;
 int samsung_gpio_lock (struct samsung_gpio_chip*,unsigned long) ;
 int samsung_gpio_unlock (struct samsung_gpio_chip*,unsigned long) ;
 struct samsung_gpio_chip* samsung_gpiolib_getchip (unsigned int) ;

int s3c_gpio_cfgpin(unsigned int pin, unsigned int config)
{
 struct samsung_gpio_chip *chip = samsung_gpiolib_getchip(pin);
 unsigned long flags;
 int offset;
 int ret;

 if (!chip)
  return -EINVAL;

 offset = pin - chip->chip.base;

 samsung_gpio_lock(chip, flags);
 ret = samsung_gpio_do_setcfg(chip, offset, config);
 samsung_gpio_unlock(chip, flags);

 return ret;
}
