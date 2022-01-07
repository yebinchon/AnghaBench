
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct intel_device {scalar_t__ irq; struct gpio_desc* reset; int list; struct platform_device* pdev; int hu_lock; } ;
struct gpio_desc {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int acpi_hci_intel_gpios ;
 int desc_to_gpio (struct gpio_desc*) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ,scalar_t__) ;
 int device_set_wakeup_capable (int *,int) ;
 int device_wakeup_disable (int *) ;
 int devm_acpi_dev_add_driver_gpios (int *,int ) ;
 void* devm_gpiod_get (int *,char*,int ) ;
 struct intel_device* devm_kzalloc (int *,int,int ) ;
 scalar_t__ gpiod_to_irq (struct gpio_desc*) ;
 int intel_device_list ;
 int intel_device_list_lock ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct intel_device*) ;

__attribute__((used)) static int intel_probe(struct platform_device *pdev)
{
 struct intel_device *idev;
 int ret;

 idev = devm_kzalloc(&pdev->dev, sizeof(*idev), GFP_KERNEL);
 if (!idev)
  return -ENOMEM;

 mutex_init(&idev->hu_lock);

 idev->pdev = pdev;

 ret = devm_acpi_dev_add_driver_gpios(&pdev->dev, acpi_hci_intel_gpios);
 if (ret)
  dev_dbg(&pdev->dev, "Unable to add GPIO mapping table\n");

 idev->reset = devm_gpiod_get(&pdev->dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(idev->reset)) {
  dev_err(&pdev->dev, "Unable to retrieve gpio\n");
  return PTR_ERR(idev->reset);
 }

 idev->irq = platform_get_irq(pdev, 0);
 if (idev->irq < 0) {
  struct gpio_desc *host_wake;

  dev_err(&pdev->dev, "No IRQ, falling back to gpio-irq\n");

  host_wake = devm_gpiod_get(&pdev->dev, "host-wake", GPIOD_IN);
  if (IS_ERR(host_wake)) {
   dev_err(&pdev->dev, "Unable to retrieve IRQ\n");
   goto no_irq;
  }

  idev->irq = gpiod_to_irq(host_wake);
  if (idev->irq < 0) {
   dev_err(&pdev->dev, "No corresponding irq for gpio\n");
   goto no_irq;
  }
 }


 device_set_wakeup_capable(&pdev->dev, 1);
 device_wakeup_disable(&pdev->dev);

no_irq:
 platform_set_drvdata(pdev, idev);


 mutex_lock(&intel_device_list_lock);
 list_add_tail(&idev->list, &intel_device_list);
 mutex_unlock(&intel_device_list_lock);

 dev_info(&pdev->dev, "registered, gpio(%d)/irq(%d).\n",
   desc_to_gpio(idev->reset), idev->irq);

 return 0;
}
