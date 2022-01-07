
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scoop_dev {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ SCOOP_GPRR ;
 struct scoop_dev* gpiochip_get_data (struct gpio_chip*) ;
 int ioread16 (scalar_t__) ;

__attribute__((used)) static int scoop_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct scoop_dev *sdev = gpiochip_get_data(chip);


 return !!(ioread16(sdev->base + SCOOP_GPRR) & (1 << (offset + 1)));
}
