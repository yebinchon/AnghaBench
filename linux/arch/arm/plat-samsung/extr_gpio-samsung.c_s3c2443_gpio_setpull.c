
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_gpio_chip {int dummy; } ;
typedef int samsung_gpio_pull_t ;





 int samsung_gpio_setpull_updown (struct samsung_gpio_chip*,unsigned int,int) ;

int s3c2443_gpio_setpull(struct samsung_gpio_chip *chip,
    unsigned int off, samsung_gpio_pull_t pull)
{
 switch (pull) {
 case 129:
  pull = 0x01;
  break;
 case 128:
  pull = 0x00;
  break;
 case 130:
  pull = 0x02;
  break;
 }
 return samsung_gpio_setpull_updown(chip, off, pull);
}
