
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int VIPER_BCKLIGHT_EN_GPIO ;
 int VIPER_LCD_EN_GPIO ;
 int dev_err (struct device*,char*) ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int viper_backlight_init(struct device *dev)
{
 int ret;


 ret = gpio_request(VIPER_BCKLIGHT_EN_GPIO, "Backlight");
 if (ret)
  goto err_request_bckl;

 ret = gpio_request(VIPER_LCD_EN_GPIO, "LCD");
 if (ret)
  goto err_request_lcd;

 ret = gpio_direction_output(VIPER_BCKLIGHT_EN_GPIO, 0);
 if (ret)
  goto err_dir;

 ret = gpio_direction_output(VIPER_LCD_EN_GPIO, 0);
 if (ret)
  goto err_dir;

 return 0;

err_dir:
 gpio_free(VIPER_LCD_EN_GPIO);
err_request_lcd:
 gpio_free(VIPER_BCKLIGHT_EN_GPIO);
err_request_bckl:
 dev_err(dev, "Failed to setup LCD GPIOs\n");

 return ret;
}
