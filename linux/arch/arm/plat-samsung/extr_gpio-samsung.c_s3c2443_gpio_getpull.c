
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_gpio_chip {int dummy; } ;
typedef int samsung_gpio_pull_t ;


 int S3C_GPIO_PULL_DOWN ;
 int S3C_GPIO_PULL_NONE ;
 int S3C_GPIO_PULL_UP ;
 int samsung_gpio_getpull_updown (struct samsung_gpio_chip*,unsigned int) ;

samsung_gpio_pull_t s3c2443_gpio_getpull(struct samsung_gpio_chip *chip,
      unsigned int off)
{
 samsung_gpio_pull_t pull;

 pull = samsung_gpio_getpull_updown(chip, off);

 switch (pull) {
 case 0x00:
  pull = S3C_GPIO_PULL_UP;
  break;
 case 0x01:
 case 0x03:
  pull = S3C_GPIO_PULL_NONE;
  break;
 case 0x02:
  pull = S3C_GPIO_PULL_DOWN;
  break;
 }

 return pull;
}
