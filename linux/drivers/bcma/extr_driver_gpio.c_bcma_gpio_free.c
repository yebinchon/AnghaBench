
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct bcma_drv_cc {int dummy; } ;


 int bcma_chipco_gpio_pullup (struct bcma_drv_cc*,int,int ) ;
 struct bcma_drv_cc* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static void bcma_gpio_free(struct gpio_chip *chip, unsigned gpio)
{
 struct bcma_drv_cc *cc = gpiochip_get_data(chip);


 bcma_chipco_gpio_pullup(cc, 1 << gpio, 0);
}
