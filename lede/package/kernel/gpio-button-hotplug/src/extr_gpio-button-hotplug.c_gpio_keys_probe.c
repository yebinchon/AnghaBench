
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct gpio_keys_platform_data {int nbuttons; struct gpio_keys_button* buttons; } ;
struct gpio_keys_button_dev {struct gpio_keys_button_data* data; struct gpio_keys_platform_data* pdata; } ;
struct gpio_keys_button_data {TYPE_1__* b; } ;
struct gpio_keys_button {scalar_t__ irq; int gpio; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ EV_SW ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int button_handle_irq ;
 int button_hotplug_event (struct gpio_keys_button_data*,scalar_t__,int ) ;
 int dev_dbg (int *,char*,int ,scalar_t__) ;
 int dev_err (int *,char*,scalar_t__,...) ;
 int dev_name (int *) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int,int ,struct gpio_keys_button_data*) ;
 int gpio_button_get_value (struct gpio_keys_button_data*) ;
 int gpio_keys_button_probe (struct platform_device*,struct gpio_keys_button_dev**,int ) ;
 scalar_t__ gpio_to_irq (int ) ;

__attribute__((used)) static int gpio_keys_probe(struct platform_device *pdev)
{
 struct gpio_keys_platform_data *pdata;
 struct gpio_keys_button_dev *bdev;
 int ret, i;


 ret = gpio_keys_button_probe(pdev, &bdev, 0);

 if (ret)
  return ret;

 pdata = bdev->pdata;
 for (i = 0; i < pdata->nbuttons; i++) {
  struct gpio_keys_button *button = &pdata->buttons[i];
  struct gpio_keys_button_data *bdata = &bdev->data[i];

  if (!button->irq)
   button->irq = gpio_to_irq(button->gpio);
  if (button->irq < 0) {
   dev_err(&pdev->dev, "failed to get irq for gpio:%d\n", button->gpio);
   continue;
  }

  ret = devm_request_threaded_irq(&pdev->dev, button->irq, ((void*)0), button_handle_irq,
      IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
      dev_name(&pdev->dev), bdata);
  if (ret < 0)
   dev_err(&pdev->dev, "failed to request irq:%d for gpio:%d\n", button->irq, button->gpio);
  else
   dev_dbg(&pdev->dev, "gpio:%d has irq:%d\n", button->gpio, button->irq);

  if (bdata->b->type == EV_SW)
   button_hotplug_event(bdata, EV_SW, gpio_button_get_value(bdata));
 }

 return 0;
}
