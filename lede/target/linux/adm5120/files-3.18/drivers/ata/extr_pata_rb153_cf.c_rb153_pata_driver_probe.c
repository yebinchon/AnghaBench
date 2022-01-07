
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; scalar_t__ end; } ;
struct rb153_cf_info {int gpio_line; unsigned int irq; int iobase; } ;
struct platform_device {int dev; } ;
struct ata_host {struct rb153_cf_info* private_data; } ;


 int DRV_NAME ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_TRIGGER_LOW ;
 int RB153_CF_MAXPORTS ;
 int ata_host_activate (struct ata_host*,unsigned int,int ,int ,int *) ;
 struct ata_host* ata_host_alloc (int *,int ) ;
 int dev_err (int *,char*,...) ;
 int devm_ioremap_nocache (int *,scalar_t__,scalar_t__) ;
 struct rb153_cf_info* devm_kzalloc (int *,int,int ) ;
 int gpio_direction_input (int) ;
 int gpio_free (int) ;
 int gpio_request (int,int ) ;
 int irq_to_gpio (unsigned int) ;
 unsigned int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ata_host*) ;
 int rb153_pata_irq_handler ;
 int rb153_pata_setup_port (struct ata_host*) ;
 int rb153_pata_sht ;

__attribute__((used)) static int rb153_pata_driver_probe(struct platform_device *pdev)
{
 unsigned int irq;
 int gpio;
 struct resource *res;
 struct ata_host *ah;
 struct rb153_cf_info *info;
 int ret;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "no IOMEM resource found\n");
  return -EINVAL;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0) {
  dev_err(&pdev->dev, "no IRQ resource found\n");
  return -ENOENT;
 }

 gpio = irq_to_gpio(irq);
 if (gpio < 0) {
  dev_err(&pdev->dev, "no GPIO found for irq%d\n", irq);
  return -ENOENT;
 }

 ret = gpio_request(gpio, DRV_NAME);
 if (ret) {
  dev_err(&pdev->dev, "GPIO request failed\n");
  return ret;
 }

 ah = ata_host_alloc(&pdev->dev, RB153_CF_MAXPORTS);
 if (!ah)
  return -ENOMEM;

 platform_set_drvdata(pdev, ah);

 info = devm_kzalloc(&pdev->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 ah->private_data = info;
 info->gpio_line = gpio;
 info->irq = irq;

 info->iobase = devm_ioremap_nocache(&pdev->dev, res->start,
    res->end - res->start + 1);
 if (!info->iobase)
  return -ENOMEM;

 ret = gpio_direction_input(gpio);
 if (ret) {
  dev_err(&pdev->dev, "unable to set GPIO direction, err=%d\n",
    ret);
  goto err_free_gpio;
 }

 rb153_pata_setup_port(ah);

 ret = ata_host_activate(ah, irq, rb153_pata_irq_handler,
    IRQF_TRIGGER_LOW, &rb153_pata_sht);
 if (ret)
  goto err_free_gpio;

 return 0;

err_free_gpio:
 gpio_free(gpio);

 return ret;
}
