
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCD_PWM_DUTY ;
 int LCD_PWM_PERIOD ;
 int S3C2410_GPB (int) ;
 int S3C2410_GPB1_TOUT1 ;
 int S3C2410_GPC (int) ;
 int S3C2410_GPD (int) ;
 int S3C_GPIO_SFN (int) ;
 int gpio_direction_output (int ,int) ;
 int lcd_pwm ;
 int mdelay (int) ;
 int pwm_config (int ,int ,int ) ;
 int pwm_disable (int ) ;
 int pwm_enable (int ) ;
 int s3c_gpio_cfgpin (int ,int ) ;

__attribute__((used)) static void rx1950_lcd_power(int enable)
{
 int i;
 static int enabled;
 if (enabled == enable)
  return;
 if (!enable) {


  for (i = 11; i < 16; i++)
   gpio_direction_output(S3C2410_GPC(i), 1);


  mdelay(100);




  for (i = 2; i < 8; i++)
   gpio_direction_output(S3C2410_GPD(i), 1);
  for (i = 11; i < 16; i++)
   gpio_direction_output(S3C2410_GPD(i), 1);


  mdelay(100);


  gpio_direction_output(S3C2410_GPB(0), 0);


  for (i = 1; i < 5; i++)
   gpio_direction_output(S3C2410_GPC(i), 0);


  for (i = 11; i < 16; i++)
   gpio_direction_output(S3C2410_GPC(i), 0);


  for (i = 11; i < 16; i++)
   gpio_direction_output(S3C2410_GPD(i), 0);

  for (i = 2; i < 8; i++)
   gpio_direction_output(S3C2410_GPD(i), 0);


  gpio_direction_output(S3C2410_GPC(6), 0);
  gpio_direction_output(S3C2410_GPC(7), 0);
  gpio_direction_output(S3C2410_GPC(5), 0);


  gpio_direction_output(S3C2410_GPB(1), 0);
  pwm_config(lcd_pwm, 0, LCD_PWM_PERIOD);
  pwm_disable(lcd_pwm);


  gpio_direction_output(S3C2410_GPC(0), 0);
  gpio_direction_output(S3C2410_GPC(10), 0);
 } else {
  pwm_config(lcd_pwm, LCD_PWM_DUTY, LCD_PWM_PERIOD);
  pwm_enable(lcd_pwm);

  gpio_direction_output(S3C2410_GPC(0), 1);
  gpio_direction_output(S3C2410_GPC(5), 1);

  s3c_gpio_cfgpin(S3C2410_GPB(1), S3C2410_GPB1_TOUT1);
  gpio_direction_output(S3C2410_GPC(7), 1);

  for (i = 1; i < 5; i++)
   s3c_gpio_cfgpin(S3C2410_GPC(i), S3C_GPIO_SFN(2));

  for (i = 11; i < 16; i++)
   s3c_gpio_cfgpin(S3C2410_GPC(i), S3C_GPIO_SFN(2));

  for (i = 2; i < 8; i++)
   s3c_gpio_cfgpin(S3C2410_GPD(i), S3C_GPIO_SFN(2));

  for (i = 11; i < 16; i++)
   s3c_gpio_cfgpin(S3C2410_GPD(i), S3C_GPIO_SFN(2));

  gpio_direction_output(S3C2410_GPC(10), 1);
  gpio_direction_output(S3C2410_GPC(6), 1);
 }
 enabled = enable;
}
