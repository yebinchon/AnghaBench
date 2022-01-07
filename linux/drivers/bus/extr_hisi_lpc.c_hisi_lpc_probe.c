
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int of_node; int fwnode; } ;
struct platform_device {struct device dev; } ;
struct logic_pio_hwaddr {scalar_t__ io_start; scalar_t__ size; int * ops; struct hisi_lpc_dev* hostdata; int flags; int fwnode; } ;
struct hisi_lpc_dev {struct logic_pio_hwaddr* io_host; int membase; int cycle_lock; } ;
struct acpi_device {int dummy; } ;
typedef scalar_t__ resource_size_t ;


 struct acpi_device* ACPI_COMPANION (struct device*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int LOGIC_PIO_INDIRECT ;
 scalar_t__ PIO_INDIRECT_SIZE ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*,scalar_t__*,scalar_t__*) ;
 int dev_set_drvdata (struct device*,struct hisi_lpc_dev*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int hisi_lpc_acpi_probe (struct device*) ;
 int hisi_lpc_ops ;
 int logic_pio_register_range (struct logic_pio_hwaddr*) ;
 int logic_pio_unregister_range (struct logic_pio_hwaddr*) ;
 int of_platform_populate (int ,int *,int *,struct device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int hisi_lpc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct acpi_device *acpi_device = ACPI_COMPANION(dev);
 struct logic_pio_hwaddr *range;
 struct hisi_lpc_dev *lpcdev;
 resource_size_t io_end;
 struct resource *res;
 int ret;

 lpcdev = devm_kzalloc(dev, sizeof(*lpcdev), GFP_KERNEL);
 if (!lpcdev)
  return -ENOMEM;

 spin_lock_init(&lpcdev->cycle_lock);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 lpcdev->membase = devm_ioremap_resource(dev, res);
 if (IS_ERR(lpcdev->membase))
  return PTR_ERR(lpcdev->membase);

 range = devm_kzalloc(dev, sizeof(*range), GFP_KERNEL);
 if (!range)
  return -ENOMEM;

 range->fwnode = dev->fwnode;
 range->flags = LOGIC_PIO_INDIRECT;
 range->size = PIO_INDIRECT_SIZE;
 range->hostdata = lpcdev;
 range->ops = &hisi_lpc_ops;
 lpcdev->io_host = range;

 ret = logic_pio_register_range(range);
 if (ret) {
  dev_err(dev, "register IO range failed (%d)!\n", ret);
  return ret;
 }


 if (acpi_device)
  ret = hisi_lpc_acpi_probe(dev);
 else
  ret = of_platform_populate(dev->of_node, ((void*)0), ((void*)0), dev);
 if (ret) {
  logic_pio_unregister_range(range);
  return ret;
 }

 dev_set_drvdata(dev, lpcdev);

 io_end = lpcdev->io_host->io_start + lpcdev->io_host->size;
 dev_info(dev, "registered range [%pa - %pa]\n",
   &lpcdev->io_host->io_start, &io_end);

 return ret;
}
