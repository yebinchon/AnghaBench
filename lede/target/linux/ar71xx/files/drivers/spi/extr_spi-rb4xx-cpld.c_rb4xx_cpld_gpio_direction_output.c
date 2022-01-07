
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb4xx_cpld {int lock; } ;
struct gpio_chip {int dummy; } ;


 int __rb4xx_cpld_change_cfg (struct rb4xx_cpld*,int,int) ;
 struct rb4xx_cpld* gpio_to_cpld (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int rb4xx_cpld_gpio_direction_output(struct gpio_chip *chip,
         unsigned offset,
         int value)
{
 struct rb4xx_cpld *cpld = gpio_to_cpld(chip);
 int ret;

 mutex_lock(&cpld->lock);
 ret = __rb4xx_cpld_change_cfg(cpld, (1 << offset), !!value << offset);
 mutex_unlock(&cpld->lock);

 return ret;
}
