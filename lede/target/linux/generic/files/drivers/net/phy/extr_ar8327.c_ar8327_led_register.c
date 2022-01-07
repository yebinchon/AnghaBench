
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct ar8327_led {scalar_t__ mode; TYPE_1__ cdev; } ;


 scalar_t__ AR8327_LED_MODE_HW ;
 int dev_attr_enable_hw_mode ;
 int device_create_file (int ,int *) ;
 int led_classdev_register (int *,TYPE_1__*) ;
 int led_classdev_unregister (TYPE_1__*) ;

__attribute__((used)) static int
ar8327_led_register(struct ar8327_led *aled)
{
 int ret;

 ret = led_classdev_register(((void*)0), &aled->cdev);
 if (ret < 0)
  return ret;

 if (aled->mode == AR8327_LED_MODE_HW) {
  ret = device_create_file(aled->cdev.dev,
      &dev_attr_enable_hw_mode);
  if (ret)
   goto err_unregister;
 }

 return 0;

err_unregister:
 led_classdev_unregister(&aled->cdev);
 return ret;
}
