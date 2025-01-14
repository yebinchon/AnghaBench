
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_rcar_priv {int type; int base; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ata_host {struct sata_rcar_priv* private_data; } ;
typedef enum sata_rcar_type { ____Placeholder_sata_rcar_type } sata_rcar_type ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ata_host_activate (struct ata_host*,int,int ,int ,int *) ;
 struct ata_host* ata_host_alloc (struct device*,int) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct sata_rcar_priv* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ of_device_get_match_data (struct device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int sata_rcar_init_controller (struct ata_host*) ;
 int sata_rcar_interrupt ;
 int sata_rcar_setup_port (struct ata_host*) ;
 int sata_rcar_sht ;

__attribute__((used)) static int sata_rcar_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct ata_host *host;
 struct sata_rcar_priv *priv;
 struct resource *mem;
 int irq;
 int ret = 0;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;
 if (!irq)
  return -EINVAL;

 priv = devm_kzalloc(dev, sizeof(struct sata_rcar_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->type = (enum sata_rcar_type)of_device_get_match_data(dev);

 pm_runtime_enable(dev);
 ret = pm_runtime_get_sync(dev);
 if (ret < 0)
  goto err_pm_disable;

 host = ata_host_alloc(dev, 1);
 if (!host) {
  ret = -ENOMEM;
  goto err_pm_put;
 }

 host->private_data = priv;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->base = devm_ioremap_resource(dev, mem);
 if (IS_ERR(priv->base)) {
  ret = PTR_ERR(priv->base);
  goto err_pm_put;
 }


 sata_rcar_setup_port(host);


 sata_rcar_init_controller(host);

 ret = ata_host_activate(host, irq, sata_rcar_interrupt, 0,
    &sata_rcar_sht);
 if (!ret)
  return 0;

err_pm_put:
 pm_runtime_put(dev);
err_pm_disable:
 pm_runtime_disable(dev);
 return ret;
}
