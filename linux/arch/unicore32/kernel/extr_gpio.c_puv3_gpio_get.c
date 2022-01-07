
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int GPIO_GPIO (unsigned int) ;
 int GPIO_GPLR ;
 int readl (int ) ;

__attribute__((used)) static int puv3_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 return !!(readl(GPIO_GPLR) & GPIO_GPIO(offset));
}
