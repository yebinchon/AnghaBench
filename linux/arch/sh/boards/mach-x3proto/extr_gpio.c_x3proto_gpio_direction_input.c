
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int KEYCTLR ;
 unsigned int __raw_readw (int ) ;
 int __raw_writew (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int x3proto_gpio_lock ;

__attribute__((used)) static int x3proto_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
{
 unsigned long flags;
 unsigned int data;

 spin_lock_irqsave(&x3proto_gpio_lock, flags);
 data = __raw_readw(KEYCTLR);
 data |= (1 << gpio);
 __raw_writew(data, KEYCTLR);
 spin_unlock_irqrestore(&x3proto_gpio_lock, flags);

 return 0;
}
