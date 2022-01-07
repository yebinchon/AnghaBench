
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int GPIO_GPCR ;
 int GPIO_GPIO (unsigned int) ;
 int GPIO_GPSR ;
 int writel (int ,int ) ;

__attribute__((used)) static void puv3_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 if (value)
  writel(GPIO_GPIO(offset), GPIO_GPSR);
 else
  writel(GPIO_GPIO(offset), GPIO_GPCR);
}
