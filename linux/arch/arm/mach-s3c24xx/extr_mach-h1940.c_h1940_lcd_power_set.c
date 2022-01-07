
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plat_lcd_data {int dummy; } ;


 int H1940_LATCH_LCD_P0 ;
 int H1940_LATCH_LCD_P1 ;
 int H1940_LATCH_LCD_P2 ;
 int H1940_LATCH_LCD_P3 ;
 int H1940_LATCH_LCD_P4 ;
 int S3C2410_GPC (int) ;
 int S3C_GPIO_SFN (int) ;
 int gpio_direction_input (int ) ;
 int gpio_direction_output (int ,int ) ;
 int gpio_get_value (int ) ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 int s3c_gpio_cfgpin (int ,int ) ;

__attribute__((used)) static void h1940_lcd_power_set(struct plat_lcd_data *pd,
     unsigned int power)
{
 int value, retries = 100;

 if (!power) {
  gpio_set_value(S3C2410_GPC(0), 0);

  do {
   value = gpio_get_value(S3C2410_GPC(6));
  } while (value && retries--);

  gpio_set_value(H1940_LATCH_LCD_P2, 0);
  gpio_set_value(H1940_LATCH_LCD_P3, 0);
  gpio_set_value(H1940_LATCH_LCD_P4, 0);

  gpio_direction_output(S3C2410_GPC(1), 0);
  gpio_direction_output(S3C2410_GPC(4), 0);

  gpio_set_value(H1940_LATCH_LCD_P1, 0);
  gpio_set_value(H1940_LATCH_LCD_P0, 0);

  gpio_set_value(S3C2410_GPC(5), 0);

 } else {
  gpio_set_value(H1940_LATCH_LCD_P0, 1);
  gpio_set_value(H1940_LATCH_LCD_P1, 1);

  gpio_direction_input(S3C2410_GPC(1));
  gpio_direction_input(S3C2410_GPC(4));
  mdelay(10);
  s3c_gpio_cfgpin(S3C2410_GPC(1), S3C_GPIO_SFN(2));
  s3c_gpio_cfgpin(S3C2410_GPC(4), S3C_GPIO_SFN(2));

  gpio_set_value(S3C2410_GPC(5), 1);
  gpio_set_value(S3C2410_GPC(0), 1);

  gpio_set_value(H1940_LATCH_LCD_P3, 1);
  gpio_set_value(H1940_LATCH_LCD_P2, 1);
  gpio_set_value(H1940_LATCH_LCD_P4, 1);
 }
}
