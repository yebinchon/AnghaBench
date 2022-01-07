
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long priv; int quality; int read; int cleanup; int init; int name; } ;
struct stm32_rng_private {TYPE_1__ rng; int ced; int rst; int clk; int base; } ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_driver_string (struct device*) ;
 int dev_set_drvdata (struct device*,struct stm32_rng_private*) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_hwrng_register (struct device*,TYPE_1__*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct stm32_rng_private* devm_kzalloc (struct device*,int,int ) ;
 int devm_reset_control_get (struct device*,int *) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int stm32_rng_cleanup ;
 int stm32_rng_init ;
 int stm32_rng_read ;
 int udelay (int) ;

__attribute__((used)) static int stm32_rng_probe(struct platform_device *ofdev)
{
 struct device *dev = &ofdev->dev;
 struct device_node *np = ofdev->dev.of_node;
 struct stm32_rng_private *priv;
 struct resource res;
 int err;

 priv = devm_kzalloc(dev, sizeof(struct stm32_rng_private), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 err = of_address_to_resource(np, 0, &res);
 if (err)
  return err;

 priv->base = devm_ioremap_resource(dev, &res);
 if (IS_ERR(priv->base))
  return PTR_ERR(priv->base);

 priv->clk = devm_clk_get(&ofdev->dev, ((void*)0));
 if (IS_ERR(priv->clk))
  return PTR_ERR(priv->clk);

 priv->rst = devm_reset_control_get(&ofdev->dev, ((void*)0));
 if (!IS_ERR(priv->rst)) {
  reset_control_assert(priv->rst);
  udelay(2);
  reset_control_deassert(priv->rst);
 }

 priv->ced = of_property_read_bool(np, "clock-error-detect");

 dev_set_drvdata(dev, priv);

 priv->rng.name = dev_driver_string(dev),

 priv->rng.init = stm32_rng_init,
 priv->rng.cleanup = stm32_rng_cleanup,

 priv->rng.read = stm32_rng_read,
 priv->rng.priv = (unsigned long) dev;
 priv->rng.quality = 900;

 pm_runtime_set_autosuspend_delay(dev, 100);
 pm_runtime_use_autosuspend(dev);
 pm_runtime_enable(dev);

 return devm_hwrng_register(dev, &priv->rng);
}
