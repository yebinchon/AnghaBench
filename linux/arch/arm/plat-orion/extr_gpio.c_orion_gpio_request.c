
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orion_gpio_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;
 int GPIO_INPUT_OK ;
 int GPIO_OUTPUT_OK ;
 struct orion_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 scalar_t__ orion_gpio_is_valid (struct orion_gpio_chip*,unsigned int,int ) ;

__attribute__((used)) static int orion_gpio_request(struct gpio_chip *chip, unsigned pin)
{
 struct orion_gpio_chip *ochip = gpiochip_get_data(chip);

 if (orion_gpio_is_valid(ochip, pin, GPIO_INPUT_OK) ||
     orion_gpio_is_valid(ochip, pin, GPIO_OUTPUT_OK))
  return 0;

 return -EINVAL;
}
