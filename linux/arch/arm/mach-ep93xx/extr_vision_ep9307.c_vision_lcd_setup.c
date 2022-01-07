
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int EP93XX_SYSCON_DEVCFG_EXVC ;
 int EP93XX_SYSCON_DEVCFG_RAS ;
 int EP93XX_SYSCON_DEVCFG_RASONP3 ;
 int GPIOF_INIT_HIGH ;
 int VISION_LCD_ENABLE ;
 int dev_name (int *) ;
 int ep93xx_devcfg_clear_bits (int) ;
 int gpio_request_one (int ,int ,int ) ;

__attribute__((used)) static int vision_lcd_setup(struct platform_device *pdev)
{
 int err;

 err = gpio_request_one(VISION_LCD_ENABLE, GPIOF_INIT_HIGH,
    dev_name(&pdev->dev));
 if (err)
  return err;

 ep93xx_devcfg_clear_bits(EP93XX_SYSCON_DEVCFG_RAS |
     EP93XX_SYSCON_DEVCFG_RASONP3 |
     EP93XX_SYSCON_DEVCFG_EXVC);

 return 0;
}
