
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serdev_device {int dev; } ;
struct TYPE_2__ {struct serdev_device* serdev; } ;
struct bcm_device {TYPE_1__ serdev_hu; int init_speed; int oper_speed; int shutdown; TYPE_1__* hu; int * dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int bcm_acpi_probe (struct bcm_device*) ;
 int bcm_get_resources (struct bcm_device*) ;
 int bcm_gpio_set_power (struct bcm_device*,int) ;
 int bcm_of_probe (struct bcm_device*) ;
 int bcm_proto ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 struct bcm_device* devm_kzalloc (int *,int,int ) ;
 scalar_t__ has_acpi_companion (int *) ;
 int hci_uart_register_device (TYPE_1__*,int *) ;
 int serdev_device_set_drvdata (struct serdev_device*,struct bcm_device*) ;

__attribute__((used)) static int bcm_serdev_probe(struct serdev_device *serdev)
{
 struct bcm_device *bcmdev;
 int err;

 bcmdev = devm_kzalloc(&serdev->dev, sizeof(*bcmdev), GFP_KERNEL);
 if (!bcmdev)
  return -ENOMEM;

 bcmdev->dev = &serdev->dev;



 bcmdev->serdev_hu.serdev = serdev;
 serdev_device_set_drvdata(serdev, bcmdev);

 if (has_acpi_companion(&serdev->dev))
  err = bcm_acpi_probe(bcmdev);
 else
  err = bcm_of_probe(bcmdev);
 if (err)
  return err;

 err = bcm_get_resources(bcmdev);
 if (err)
  return err;

 if (!bcmdev->shutdown) {
  dev_warn(&serdev->dev,
    "No reset resource, using default baud rate\n");
  bcmdev->oper_speed = bcmdev->init_speed;
 }

 err = bcm_gpio_set_power(bcmdev, 0);
 if (err)
  dev_err(&serdev->dev, "Failed to power down\n");

 return hci_uart_register_device(&bcmdev->serdev_hu, &bcm_proto);
}
