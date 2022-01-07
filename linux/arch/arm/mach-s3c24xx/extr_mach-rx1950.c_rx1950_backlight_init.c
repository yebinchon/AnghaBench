
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int S3C2410_GPB (int ) ;
 int WARN_ON (int ) ;
 int dev_err (struct device*,char*) ;
 int gpio_request (int ,char*) ;
 int lcd_pwm ;
 int pwm_apply_args (int ) ;
 int pwm_request (int,char*) ;
 int rx1950_bl_power (int) ;
 int rx1950_lcd_power (int) ;

__attribute__((used)) static int rx1950_backlight_init(struct device *dev)
{
 WARN_ON(gpio_request(S3C2410_GPB(0), "Backlight"));
 lcd_pwm = pwm_request(1, "RX1950 LCD");
 if (IS_ERR(lcd_pwm)) {
  dev_err(dev, "Unable to request PWM for LCD power!\n");
  return PTR_ERR(lcd_pwm);
 }





 pwm_apply_args(lcd_pwm);

 rx1950_lcd_power(1);
 rx1950_bl_power(1);

 return 0;
}
