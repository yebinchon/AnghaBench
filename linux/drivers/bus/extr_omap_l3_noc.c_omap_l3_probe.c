
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct omap_l3 {int num_modules; int debug_irq; int app_irq; int * dev; int * l3_base; } ;
struct of_device_id {int data; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int L3_BASE_IS_SUBMODULE ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct omap_l3* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int,char*,struct omap_l3*) ;
 int l3_interrupt_handler ;
 int l3_noc_match ;
 int memcpy (struct omap_l3*,int ,int) ;
 struct of_device_id* of_match_device (int ,int *) ;
 void* platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct omap_l3*) ;

__attribute__((used)) static int omap_l3_probe(struct platform_device *pdev)
{
 const struct of_device_id *of_id;
 static struct omap_l3 *l3;
 int ret, i, res_idx;

 of_id = of_match_device(l3_noc_match, &pdev->dev);
 if (!of_id) {
  dev_err(&pdev->dev, "OF data missing\n");
  return -EINVAL;
 }

 l3 = devm_kzalloc(&pdev->dev, sizeof(*l3), GFP_KERNEL);
 if (!l3)
  return -ENOMEM;

 memcpy(l3, of_id->data, sizeof(*l3));
 l3->dev = &pdev->dev;
 platform_set_drvdata(pdev, l3);


 for (i = 0, res_idx = 0; i < l3->num_modules; i++) {
  struct resource *res;

  if (l3->l3_base[i] == L3_BASE_IS_SUBMODULE) {

   BUG_ON(i == 0);
   l3->l3_base[i] = l3->l3_base[i - 1];
   continue;
  }
  res = platform_get_resource(pdev, IORESOURCE_MEM, res_idx);
  l3->l3_base[i] = devm_ioremap_resource(&pdev->dev, res);
  if (IS_ERR(l3->l3_base[i])) {
   dev_err(l3->dev, "ioremap %d failed\n", i);
   return PTR_ERR(l3->l3_base[i]);
  }
  res_idx++;
 }




 l3->debug_irq = platform_get_irq(pdev, 0);
 ret = devm_request_irq(l3->dev, l3->debug_irq, l3_interrupt_handler,
          0x0, "l3-dbg-irq", l3);
 if (ret) {
  dev_err(l3->dev, "request_irq failed for %d\n",
   l3->debug_irq);
  return ret;
 }

 l3->app_irq = platform_get_irq(pdev, 1);
 ret = devm_request_irq(l3->dev, l3->app_irq, l3_interrupt_handler,
          0x0, "l3-app-irq", l3);
 if (ret)
  dev_err(l3->dev, "request_irq failed for %d\n", l3->app_irq);

 return ret;
}
