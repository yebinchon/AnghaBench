
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int dummy; } ;


 int EGPIO_MAGICIAN_LCD_POWER ;
 int GPIO104_MAGICIAN_LCD_VOFF_EN ;
 int GPIO105_MAGICIAN_LCD_VON_EN ;
 int GPIO106_MAGICIAN_LCD_DCDC_NRESET ;
 int GPIO75_MAGICIAN_SAMSUNG_POWER ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 int pr_debug (char*,char*) ;
 int system_rev ;

__attribute__((used)) static void samsung_lcd_power(int on, struct fb_var_screeninfo *si)
{
 pr_debug("Samsung LCD power: %s\n", on ? "on" : "off");

 if (on) {
  if (system_rev < 3)
   gpio_set_value(GPIO75_MAGICIAN_SAMSUNG_POWER, 1);
  else
   gpio_set_value(EGPIO_MAGICIAN_LCD_POWER, 1);
  mdelay(6);
  gpio_set_value(GPIO106_MAGICIAN_LCD_DCDC_NRESET, 1);
  mdelay(6);
  gpio_set_value(GPIO104_MAGICIAN_LCD_VOFF_EN, 1);
  mdelay(16);
  gpio_set_value(GPIO105_MAGICIAN_LCD_VON_EN, 1);
 } else {
  gpio_set_value(GPIO105_MAGICIAN_LCD_VON_EN, 0);
  mdelay(16);
  gpio_set_value(GPIO104_MAGICIAN_LCD_VOFF_EN, 0);
  mdelay(6);
  gpio_set_value(GPIO106_MAGICIAN_LCD_DCDC_NRESET, 0);
  mdelay(6);
  if (system_rev < 3)
   gpio_set_value(GPIO75_MAGICIAN_SAMSUNG_POWER, 0);
  else
   gpio_set_value(EGPIO_MAGICIAN_LCD_POWER, 0);
 }
}
