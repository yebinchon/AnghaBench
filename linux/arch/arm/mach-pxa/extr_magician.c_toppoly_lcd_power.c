
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int dummy; } ;


 int EGPIO_MAGICIAN_LCD_POWER ;
 int EGPIO_MAGICIAN_TOPPOLY_POWER ;
 int GPIO104_MAGICIAN_LCD_VOFF_EN ;
 int GPIO105_MAGICIAN_LCD_VON_EN ;
 int GPIO106_MAGICIAN_LCD_DCDC_NRESET ;
 int gpio_set_value (int ,int) ;
 int msleep (int) ;
 int pr_debug (char*,char*) ;
 int udelay (int) ;

__attribute__((used)) static void toppoly_lcd_power(int on, struct fb_var_screeninfo *si)
{
 pr_debug("Toppoly LCD power: %s\n", on ? "on" : "off");

 if (on) {
  gpio_set_value(EGPIO_MAGICIAN_TOPPOLY_POWER, 1);
  gpio_set_value(GPIO106_MAGICIAN_LCD_DCDC_NRESET, 1);
  udelay(2000);
  gpio_set_value(EGPIO_MAGICIAN_LCD_POWER, 1);
  udelay(2000);

  udelay(2000);
  gpio_set_value(GPIO104_MAGICIAN_LCD_VOFF_EN, 1);
  udelay(2000);
  gpio_set_value(GPIO105_MAGICIAN_LCD_VON_EN, 1);
 } else {
  msleep(15);
  gpio_set_value(GPIO105_MAGICIAN_LCD_VON_EN, 0);
  udelay(500);
  gpio_set_value(GPIO104_MAGICIAN_LCD_VOFF_EN, 0);
  udelay(1000);
  gpio_set_value(GPIO106_MAGICIAN_LCD_DCDC_NRESET, 0);
  gpio_set_value(EGPIO_MAGICIAN_LCD_POWER, 0);
 }
}
