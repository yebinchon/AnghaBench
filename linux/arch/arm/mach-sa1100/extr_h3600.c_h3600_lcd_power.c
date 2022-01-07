
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H3600_EGPIO_LCD_5V_ON ;
 int H3600_EGPIO_LCD_PCI ;
 int H3600_EGPIO_LVDD_ON ;
 int H3XXX_EGPIO_LCD_ON ;
 int gpio_direction_output (int ,int) ;
 int h3600_lcd_request () ;

__attribute__((used)) static void h3600_lcd_power(int enable)
{
 if (!h3600_lcd_request())
  return;

 gpio_direction_output(H3XXX_EGPIO_LCD_ON, enable);
 gpio_direction_output(H3600_EGPIO_LCD_PCI, enable);
 gpio_direction_output(H3600_EGPIO_LCD_5V_ON, enable);
 gpio_direction_output(H3600_EGPIO_LVDD_ON, enable);
}
