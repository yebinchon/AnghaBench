
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orion_gpio_chip {int lock; } ;
struct gpio_chip {int dummy; } ;


 int __set_level (struct orion_gpio_chip*,unsigned int,int) ;
 struct orion_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void orion_gpio_set(struct gpio_chip *chip, unsigned pin, int value)
{
 struct orion_gpio_chip *ochip = gpiochip_get_data(chip);
 unsigned long flags;

 spin_lock_irqsave(&ochip->lock, flags);
 __set_level(ochip, pin, value);
 spin_unlock_irqrestore(&ochip->lock, flags);
}
