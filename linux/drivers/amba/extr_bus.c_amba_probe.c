
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; int driver; } ;
struct amba_id {int dummy; } ;
struct amba_driver {int (* probe ) (struct amba_device*,struct amba_id const*) ;int id_table; } ;
struct amba_device {int dummy; } ;


 int amba_get_enable_pclk (struct amba_device*) ;
 struct amba_id* amba_lookup (int ,struct amba_device*) ;
 int amba_put_disable_pclk (struct amba_device*) ;
 int dev_pm_domain_attach (struct device*,int) ;
 int dev_pm_domain_detach (struct device*,int) ;
 int of_clk_set_defaults (int ,int) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_suspended (struct device*) ;
 int stub1 (struct amba_device*,struct amba_id const*) ;
 struct amba_device* to_amba_device (struct device*) ;
 struct amba_driver* to_amba_driver (int ) ;

__attribute__((used)) static int amba_probe(struct device *dev)
{
 struct amba_device *pcdev = to_amba_device(dev);
 struct amba_driver *pcdrv = to_amba_driver(dev->driver);
 const struct amba_id *id = amba_lookup(pcdrv->id_table, pcdev);
 int ret;

 do {
  ret = of_clk_set_defaults(dev->of_node, 0);
  if (ret < 0)
   break;

  ret = dev_pm_domain_attach(dev, 1);
  if (ret)
   break;

  ret = amba_get_enable_pclk(pcdev);
  if (ret) {
   dev_pm_domain_detach(dev, 1);
   break;
  }

  pm_runtime_get_noresume(dev);
  pm_runtime_set_active(dev);
  pm_runtime_enable(dev);

  ret = pcdrv->probe(pcdev, id);
  if (ret == 0)
   break;

  pm_runtime_disable(dev);
  pm_runtime_set_suspended(dev);
  pm_runtime_put_noidle(dev);

  amba_put_disable_pclk(pcdev);
  dev_pm_domain_detach(dev, 1);
 } while (0);

 return ret;
}
