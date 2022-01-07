
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int GPIO_GPDR ;
 int GPIO_GPIO (unsigned int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int puv3_gpio_set (struct gpio_chip*,unsigned int,int) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int puv3_direction_output(struct gpio_chip *chip, unsigned offset,
  int value)
{
 unsigned long flags;

 local_irq_save(flags);
 puv3_gpio_set(chip, offset, value);
 writel(readl(GPIO_GPDR) | GPIO_GPIO(offset), GPIO_GPDR);
 local_irq_restore(flags);
 return 0;
}
