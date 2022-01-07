
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H3100_GPIO_LCD_3V_ON ;
 int H3XXX_EGPIO_LCD_ON ;
 int gpio_set_value (int ,int) ;
 int h3100_lcd_request () ;

__attribute__((used)) static void h3100_lcd_power(int enable)
{
 if (!h3100_lcd_request())
  return;

 gpio_set_value(H3100_GPIO_LCD_3V_ON, enable);
 gpio_set_value(H3XXX_EGPIO_LCD_ON, enable);
}
