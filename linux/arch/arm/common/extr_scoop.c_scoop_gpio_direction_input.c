
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scoop_dev {int scoop_lock; scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ SCOOP_GPCR ;
 struct scoop_dev* gpiochip_get_data (struct gpio_chip*) ;
 unsigned short ioread16 (scalar_t__) ;
 int iowrite16 (unsigned short,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int scoop_gpio_direction_input(struct gpio_chip *chip,
   unsigned offset)
{
 struct scoop_dev *sdev = gpiochip_get_data(chip);
 unsigned long flags;
 unsigned short gpcr;

 spin_lock_irqsave(&sdev->scoop_lock, flags);

 gpcr = ioread16(sdev->base + SCOOP_GPCR);
 gpcr &= ~(1 << (offset + 1));
 iowrite16(gpcr, sdev->base + SCOOP_GPCR);

 spin_unlock_irqrestore(&sdev->scoop_lock, flags);

 return 0;
}
