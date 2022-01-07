
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ngpio; } ;
struct samsung_gpio_chip {TYPE_1__ chip; } ;


 scalar_t__ CONFIG_S3C_GPIO_SPACE ;
 unsigned int S3C_GPIO_END ;
 struct samsung_gpio_chip* samsung_gpiolib_getchip (unsigned int) ;
 int samsung_pm_resume_gpio (struct samsung_gpio_chip*) ;

void samsung_pm_restore_gpios(void)
{
 struct samsung_gpio_chip *ourchip;
 unsigned int gpio_nr;

 for (gpio_nr = 0; gpio_nr < S3C_GPIO_END;) {
  ourchip = samsung_gpiolib_getchip(gpio_nr);
  if (!ourchip) {
   gpio_nr++;
   continue;
  }

  samsung_pm_resume_gpio(ourchip);

  gpio_nr += ourchip->chip.ngpio;
  gpio_nr += CONFIG_S3C_GPIO_SPACE;
 }
}
