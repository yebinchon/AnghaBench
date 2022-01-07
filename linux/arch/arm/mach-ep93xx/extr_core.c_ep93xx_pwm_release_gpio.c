
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int id; } ;


 int EP93XX_GPIO_LINE_EGPIO14 ;
 int EP93XX_SYSCON_DEVCFG_PONG ;
 int ep93xx_devcfg_clear_bits (int ) ;
 int gpio_direction_input (int ) ;
 int gpio_free (int ) ;

void ep93xx_pwm_release_gpio(struct platform_device *pdev)
{
 if (pdev->id == 1) {
  gpio_direction_input(EP93XX_GPIO_LINE_EGPIO14);
  gpio_free(EP93XX_GPIO_LINE_EGPIO14);


  ep93xx_devcfg_clear_bits(EP93XX_SYSCON_DEVCFG_PONG);
 }
}
