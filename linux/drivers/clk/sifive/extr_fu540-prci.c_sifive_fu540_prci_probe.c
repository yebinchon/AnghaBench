
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct __prci_data {int va; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int __prci_register_clocks (struct device*,struct __prci_data*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,int) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct __prci_data* devm_kzalloc (struct device*,int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int sifive_fu540_prci_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *res;
 struct __prci_data *pd;
 int r;

 pd = devm_kzalloc(dev, sizeof(*pd), GFP_KERNEL);
 if (!pd)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pd->va = devm_ioremap_resource(dev, res);
 if (IS_ERR(pd->va))
  return PTR_ERR(pd->va);

 r = __prci_register_clocks(dev, pd);
 if (r) {
  dev_err(dev, "could not register clocks: %d\n", r);
  return r;
 }

 dev_dbg(dev, "SiFive FU540 PRCI probed\n");

 return 0;
}
