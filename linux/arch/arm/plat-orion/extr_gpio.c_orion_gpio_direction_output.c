
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orion_gpio_chip {int lock; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;
 int GPIO_OUTPUT_OK ;
 int __set_blinking (struct orion_gpio_chip*,unsigned int,int ) ;
 int __set_direction (struct orion_gpio_chip*,unsigned int,int ) ;
 int __set_level (struct orion_gpio_chip*,unsigned int,int) ;
 struct orion_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int orion_gpio_is_valid (struct orion_gpio_chip*,unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
orion_gpio_direction_output(struct gpio_chip *chip, unsigned pin, int value)
{
 struct orion_gpio_chip *ochip = gpiochip_get_data(chip);
 unsigned long flags;

 if (!orion_gpio_is_valid(ochip, pin, GPIO_OUTPUT_OK))
  return -EINVAL;

 spin_lock_irqsave(&ochip->lock, flags);
 __set_blinking(ochip, pin, 0);
 __set_level(ochip, pin, value);
 __set_direction(ochip, pin, 0);
 spin_unlock_irqrestore(&ochip->lock, flags);

 return 0;
}
