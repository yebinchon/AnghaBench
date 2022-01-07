
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int rx1950_bl_power (int) ;
 int rx1950_lcd_power (int) ;

__attribute__((used)) static int rx1950_backlight_notify(struct device *dev, int brightness)
{
 if (!brightness) {
  rx1950_bl_power(0);
  rx1950_lcd_power(0);
 } else {
  rx1950_lcd_power(1);
  rx1950_bl_power(1);
 }
 return brightness;
}
