
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct bt_bmc {scalar_t__ offset; int map; int irq; } ;


 scalar_t__ BT_CR1 ;
 int BT_CR1_IRQ_H2B ;
 int BT_CR1_IRQ_HBUSY ;
 int DEVICE_NAME ;
 int ENODEV ;
 int IRQF_SHARED ;
 int bt_bmc_irq ;
 int dev_warn (struct device*,char*,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,int ,struct bt_bmc*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;

__attribute__((used)) static int bt_bmc_config_irq(struct bt_bmc *bt_bmc,
        struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 int rc;

 bt_bmc->irq = platform_get_irq(pdev, 0);
 if (!bt_bmc->irq)
  return -ENODEV;

 rc = devm_request_irq(dev, bt_bmc->irq, bt_bmc_irq, IRQF_SHARED,
         DEVICE_NAME, bt_bmc);
 if (rc < 0) {
  dev_warn(dev, "Unable to request IRQ %d\n", bt_bmc->irq);
  bt_bmc->irq = 0;
  return rc;
 }







 rc = regmap_update_bits(bt_bmc->map, bt_bmc->offset + BT_CR1,
    (BT_CR1_IRQ_H2B | BT_CR1_IRQ_HBUSY),
    (BT_CR1_IRQ_H2B | BT_CR1_IRQ_HBUSY));

 return rc;
}
