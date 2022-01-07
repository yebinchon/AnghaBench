
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int EP93XX_GPIO_LINE_E (int) ;
 int EP93XX_GPIO_LINE_EGPIO15 ;
 int EP93XX_GPIO_LINE_EGPIO2 ;
 int EP93XX_GPIO_LINE_G (int) ;
 int EP93XX_GPIO_LINE_H (int) ;
 int EP93XX_SYSCON_DEVCFG_EONIDE ;
 int EP93XX_SYSCON_DEVCFG_GONIDE ;
 int EP93XX_SYSCON_DEVCFG_HONIDE ;
 int ep93xx_devcfg_set_bits (int) ;
 int gpio_free (int ) ;

void ep93xx_ide_release_gpio(struct platform_device *pdev)
{
 int i;

 for (i = 2; i < 8; i++)
  gpio_free(EP93XX_GPIO_LINE_E(i));
 for (i = 4; i < 8; i++)
  gpio_free(EP93XX_GPIO_LINE_G(i));
 for (i = 0; i < 8; i++)
  gpio_free(EP93XX_GPIO_LINE_H(i));
 gpio_free(EP93XX_GPIO_LINE_EGPIO15);
 gpio_free(EP93XX_GPIO_LINE_EGPIO2);



 ep93xx_devcfg_set_bits(EP93XX_SYSCON_DEVCFG_EONIDE |
          EP93XX_SYSCON_DEVCFG_GONIDE |
          EP93XX_SYSCON_DEVCFG_HONIDE);
}
