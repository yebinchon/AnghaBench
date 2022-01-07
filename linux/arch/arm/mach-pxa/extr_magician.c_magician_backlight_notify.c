
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EGPIO_MAGICIAN_BL_POWER ;
 int EGPIO_MAGICIAN_BL_POWER2 ;
 int gpio_set_value (int ,int) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int magician_backlight_notify(struct device *dev, int brightness)
{
 pr_debug("Brightness = %i\n", brightness);
 gpio_set_value(EGPIO_MAGICIAN_BL_POWER, brightness);
 if (brightness >= 200) {
  gpio_set_value(EGPIO_MAGICIAN_BL_POWER2, 1);
  return brightness - 72;
 } else {
  gpio_set_value(EGPIO_MAGICIAN_BL_POWER2, 0);
  return brightness;
 }
}
