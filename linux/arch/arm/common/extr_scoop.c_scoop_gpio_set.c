
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scoop_dev {int scoop_lock; } ;
struct gpio_chip {int dummy; } ;


 int __scoop_gpio_set (struct scoop_dev*,unsigned int,int) ;
 struct scoop_dev* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void scoop_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct scoop_dev *sdev = gpiochip_get_data(chip);
 unsigned long flags;

 spin_lock_irqsave(&sdev->scoop_lock, flags);

 __scoop_gpio_set(sdev, offset, value);

 spin_unlock_irqrestore(&sdev->scoop_lock, flags);
}
