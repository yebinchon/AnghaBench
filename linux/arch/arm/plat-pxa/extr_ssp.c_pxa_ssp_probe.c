
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_device {scalar_t__ irq; int type; int node; scalar_t__ of_node; scalar_t__ use_count; int port_id; int * mmio_base; int phys_base; int clk; struct platform_device* pdev; } ;
struct resource {int start; } ;
struct platform_device_id {scalar_t__ driver_data; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {int id; int name; struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_clk_get (struct device*,int *) ;
 int * devm_ioremap (struct device*,int ,int ) ;
 struct ssp_device* devm_kzalloc (struct device*,int,int ) ;
 struct resource* devm_request_mem_region (struct device*,int ,int ,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int of_match_ptr (int ) ;
 struct platform_device_id* platform_get_device_id (struct platform_device*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ssp_device*) ;
 int pxa_ssp_of_ids ;
 int resource_size (struct resource*) ;
 int ssp_list ;
 int ssp_lock ;

__attribute__((used)) static int pxa_ssp_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct ssp_device *ssp;
 struct device *dev = &pdev->dev;

 ssp = devm_kzalloc(dev, sizeof(struct ssp_device), GFP_KERNEL);
 if (ssp == ((void*)0))
  return -ENOMEM;

 ssp->pdev = pdev;

 ssp->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(ssp->clk))
  return PTR_ERR(ssp->clk);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res == ((void*)0)) {
  dev_err(dev, "no memory resource defined\n");
  return -ENODEV;
 }

 res = devm_request_mem_region(dev, res->start, resource_size(res),
          pdev->name);
 if (res == ((void*)0)) {
  dev_err(dev, "failed to request memory resource\n");
  return -EBUSY;
 }

 ssp->phys_base = res->start;

 ssp->mmio_base = devm_ioremap(dev, res->start, resource_size(res));
 if (ssp->mmio_base == ((void*)0)) {
  dev_err(dev, "failed to ioremap() registers\n");
  return -ENODEV;
 }

 ssp->irq = platform_get_irq(pdev, 0);
 if (ssp->irq < 0) {
  dev_err(dev, "no IRQ resource defined\n");
  return -ENODEV;
 }

 if (dev->of_node) {
  const struct of_device_id *id =
   of_match_device(of_match_ptr(pxa_ssp_of_ids), dev);
  ssp->type = (int) id->data;
 } else {
  const struct platform_device_id *id =
   platform_get_device_id(pdev);
  ssp->type = (int) id->driver_data;




  ssp->port_id = pdev->id + 1;
 }

 ssp->use_count = 0;
 ssp->of_node = dev->of_node;

 mutex_lock(&ssp_lock);
 list_add(&ssp->node, &ssp_list);
 mutex_unlock(&ssp_lock);

 platform_set_drvdata(pdev, ssp);

 return 0;
}
