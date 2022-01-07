
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct ar8327_led {scalar_t__ mode; int led_work; TYPE_1__ cdev; } ;


 scalar_t__ AR8327_LED_MODE_HW ;
 int cancel_work_sync (int *) ;
 int dev_attr_enable_hw_mode ;
 int device_remove_file (int ,int *) ;
 int led_classdev_unregister (TYPE_1__*) ;

__attribute__((used)) static void
ar8327_led_unregister(struct ar8327_led *aled)
{
 if (aled->mode == AR8327_LED_MODE_HW)
  device_remove_file(aled->cdev.dev, &dev_attr_enable_hw_mode);

 led_classdev_unregister(&aled->cdev);
 cancel_work_sync(&aled->led_work);
}
