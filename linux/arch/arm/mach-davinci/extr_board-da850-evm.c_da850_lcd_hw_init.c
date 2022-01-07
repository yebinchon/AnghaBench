
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ IS_ERR (struct platform_device*) ;
 int PTR_ERR (struct platform_device*) ;
 int da850_lcd_backlight_info ;
 int da850_lcd_gpio_lookups ;
 int da850_lcd_supply_device ;
 int gpiod_add_lookup_tables (int ,int ) ;
 int platform_device_register (int *) ;
 struct platform_device* platform_device_register_full (int *) ;

__attribute__((used)) static int da850_lcd_hw_init(void)
{
 struct platform_device *backlight;
 int status;

 gpiod_add_lookup_tables(da850_lcd_gpio_lookups,
    ARRAY_SIZE(da850_lcd_gpio_lookups));

 backlight = platform_device_register_full(&da850_lcd_backlight_info);
 if (IS_ERR(backlight))
  return PTR_ERR(backlight);

 status = platform_device_register(&da850_lcd_supply_device);
 if (status)
  return status;

 return 0;
}
