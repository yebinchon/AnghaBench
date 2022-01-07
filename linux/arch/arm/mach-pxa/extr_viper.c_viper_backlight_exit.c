
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int VIPER_BCKLIGHT_EN_GPIO ;
 int VIPER_LCD_EN_GPIO ;
 int gpio_free (int ) ;

__attribute__((used)) static void viper_backlight_exit(struct device *dev)
{
 gpio_free(VIPER_LCD_EN_GPIO);
 gpio_free(VIPER_BCKLIGHT_EN_GPIO);
}
