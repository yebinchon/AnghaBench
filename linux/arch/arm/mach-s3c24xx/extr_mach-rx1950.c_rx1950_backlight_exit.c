
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int S3C2410_GPB (int ) ;
 int gpio_free (int ) ;
 int lcd_pwm ;
 int pwm_free (int ) ;
 int rx1950_bl_power (int ) ;
 int rx1950_lcd_power (int ) ;

__attribute__((used)) static void rx1950_backlight_exit(struct device *dev)
{
 rx1950_bl_power(0);
 rx1950_lcd_power(0);

 pwm_free(lcd_pwm);
 gpio_free(S3C2410_GPB(0));
}
