
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_gpio_chip {int dummy; } ;
typedef int samsung_gpio_pull_t ;


 int S3C_GPIO_PULL_DOWN ;
 int s3c24xx_gpio_getpull_1 (struct samsung_gpio_chip*,unsigned int,int ) ;

samsung_gpio_pull_t s3c24xx_gpio_getpull_1down(struct samsung_gpio_chip *chip,
            unsigned int off)
{
 return s3c24xx_gpio_getpull_1(chip, off, S3C_GPIO_PULL_DOWN);
}
