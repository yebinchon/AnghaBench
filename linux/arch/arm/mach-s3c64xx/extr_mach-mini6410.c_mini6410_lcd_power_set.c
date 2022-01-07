
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plat_lcd_data {int dummy; } ;


 int S3C64XX_GPE (int ) ;
 int gpio_direction_output (int ,int) ;

__attribute__((used)) static void mini6410_lcd_power_set(struct plat_lcd_data *pd,
       unsigned int power)
{
 if (power)
  gpio_direction_output(S3C64XX_GPE(0), 1);
 else
  gpio_direction_output(S3C64XX_GPE(0), 0);
}
