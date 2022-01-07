
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int VISION_LCD_ENABLE ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void vision_lcd_blank(int blank_mode, struct fb_info *info)
{
 if (blank_mode)
  gpio_set_value(VISION_LCD_ENABLE, 0);
 else
  gpio_set_value(VISION_LCD_ENABLE, 1);
}
