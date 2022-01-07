
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rb750_led_platform_data {int num_leds; int latch_change; struct rb750_led_data* leds; } ;
struct rb750_led_drvdata {int num_leds; struct rb750_led_dev* led_devs; } ;
struct TYPE_4__ {int brightness; int brightness_set; int default_trigger; int name; } ;
struct rb750_led_dev {int active_low; TYPE_1__ cdev; int latch_change; int mask; } ;
struct rb750_led_data {int active_low; int mask; int default_trigger; int name; } ;
struct TYPE_5__ {struct rb750_led_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_OFF ;
 int kfree (struct rb750_led_drvdata*) ;
 struct rb750_led_drvdata* kzalloc (int,int ) ;
 int led_classdev_register (TYPE_2__*,TYPE_1__*) ;
 int led_classdev_unregister (TYPE_1__*) ;
 int platform_set_drvdata (struct platform_device*,struct rb750_led_drvdata*) ;
 int rb750_led_brightness_set ;

__attribute__((used)) static int rb750_led_probe(struct platform_device *pdev)
{
 struct rb750_led_platform_data *pdata;
 struct rb750_led_drvdata *drvdata;
 int ret = 0;
 int i;

 pdata = pdev->dev.platform_data;
 if (!pdata)
  return -EINVAL;

 drvdata = kzalloc(sizeof(struct rb750_led_drvdata) +
     sizeof(struct rb750_led_dev) * pdata->num_leds,
     GFP_KERNEL);
 if (!drvdata)
  return -ENOMEM;

 drvdata->num_leds = pdata->num_leds;
 drvdata->led_devs = (struct rb750_led_dev *) &drvdata[1];

 for (i = 0; i < drvdata->num_leds; i++) {
  struct rb750_led_dev *rbled = &drvdata->led_devs[i];
  struct rb750_led_data *led_data = &pdata->leds[i];

  rbled->cdev.name = led_data->name;
  rbled->cdev.default_trigger = led_data->default_trigger;
  rbled->cdev.brightness_set = rb750_led_brightness_set;
  rbled->cdev.brightness = LED_OFF;

  rbled->mask = led_data->mask;
  rbled->active_low = !!led_data->active_low;
  rbled->latch_change = pdata->latch_change;

  ret = led_classdev_register(&pdev->dev, &rbled->cdev);
  if (ret)
   goto err;
 }

 platform_set_drvdata(pdev, drvdata);
 return 0;

err:
 for (i = i - 1; i >= 0; i--)
  led_classdev_unregister(&drvdata->led_devs[i].cdev);

 kfree(drvdata);
 return ret;
}
