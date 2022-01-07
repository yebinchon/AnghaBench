
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int VISION_LCD_ENABLE ;
 int gpio_free (int ) ;

__attribute__((used)) static void vision_lcd_teardown(struct platform_device *pdev)
{
 gpio_free(VISION_LCD_ENABLE);
}
