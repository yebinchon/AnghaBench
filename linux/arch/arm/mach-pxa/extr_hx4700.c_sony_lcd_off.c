
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO110_HX4700_LCD_LVDD_3V3_ON ;
 int GPIO111_HX4700_LCD_AVDD_3V3_ON ;
 int GPIO112_HX4700_LCD_N2V7_7V3_ON ;
 int GPIO59_HX4700_LCD_PC1 ;
 int GPIO62_HX4700_LCD_nRESET ;
 int gpio_set_value (int ,int ) ;
 int mdelay (int) ;

__attribute__((used)) static void sony_lcd_off(void)
{
 gpio_set_value(GPIO59_HX4700_LCD_PC1, 0);
 gpio_set_value(GPIO62_HX4700_LCD_nRESET, 0);
 mdelay(10);
 gpio_set_value(GPIO112_HX4700_LCD_N2V7_7V3_ON, 0);
 mdelay(10);
 gpio_set_value(GPIO111_HX4700_LCD_AVDD_3V3_ON, 0);
 mdelay(10);
 gpio_set_value(GPIO110_HX4700_LCD_LVDD_3V3_ON, 0);
}
