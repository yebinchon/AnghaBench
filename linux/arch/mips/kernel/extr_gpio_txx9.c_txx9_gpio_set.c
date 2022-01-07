
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int mmiowb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int txx9_gpio_lock ;
 int txx9_gpio_set_raw (unsigned int,int) ;

__attribute__((used)) static void txx9_gpio_set(struct gpio_chip *chip, unsigned int offset,
     int value)
{
 unsigned long flags;
 spin_lock_irqsave(&txx9_gpio_lock, flags);
 txx9_gpio_set_raw(offset, value);
 mmiowb();
 spin_unlock_irqrestore(&txx9_gpio_lock, flags);
}
