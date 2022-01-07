
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int EP93XX_GPIO_LINE_C (int) ;
 int EP93XX_GPIO_LINE_D (int) ;
 int EP93XX_SYSCON_DEVCFG_GONK ;
 int EP93XX_SYSCON_DEVCFG_KEYS ;
 int ep93xx_devcfg_set_bits (int) ;
 int gpio_free (int ) ;

void ep93xx_keypad_release_gpio(struct platform_device *pdev)
{
 int i;

 for (i = 0; i < 8; i++) {
  gpio_free(EP93XX_GPIO_LINE_C(i));
  gpio_free(EP93XX_GPIO_LINE_D(i));
 }


 ep93xx_devcfg_set_bits(EP93XX_SYSCON_DEVCFG_KEYS |
          EP93XX_SYSCON_DEVCFG_GONK);
}
