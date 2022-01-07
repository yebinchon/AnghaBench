
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {int name; struct device dev; } ;
struct of_device_id {struct bcm2835_rng_of_data* data; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int cleanup; int read; int init; int name; } ;
struct bcm2835_rng_priv {TYPE_1__ rng; int mask_interrupts; int clk; int base; } ;
struct bcm2835_rng_of_data {int mask_interrupts; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int bcm2835_rng_cleanup ;
 int bcm2835_rng_init ;
 int bcm2835_rng_of_match ;
 int bcm2835_rng_read ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 scalar_t__ dev_of_node (struct device*) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_hwrng_register (struct device*,TYPE_1__*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct bcm2835_rng_priv* devm_kzalloc (struct device*,int,int ) ;
 struct of_device_id* of_match_node (int ,struct device_node*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct bcm2835_rng_priv*) ;

__attribute__((used)) static int bcm2835_rng_probe(struct platform_device *pdev)
{
 const struct bcm2835_rng_of_data *of_data;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 const struct of_device_id *rng_id;
 struct bcm2835_rng_priv *priv;
 struct resource *r;
 int err;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 platform_set_drvdata(pdev, priv);

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);


 priv->base = devm_ioremap_resource(dev, r);
 if (IS_ERR(priv->base))
  return PTR_ERR(priv->base);


 priv->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(priv->clk) && PTR_ERR(priv->clk) == -EPROBE_DEFER)
  return -EPROBE_DEFER;

 priv->rng.name = pdev->name;
 priv->rng.init = bcm2835_rng_init;
 priv->rng.read = bcm2835_rng_read;
 priv->rng.cleanup = bcm2835_rng_cleanup;

 if (dev_of_node(dev)) {
  rng_id = of_match_node(bcm2835_rng_of_match, np);
  if (!rng_id)
   return -EINVAL;


  of_data = rng_id->data;
  if (of_data)
   priv->mask_interrupts = of_data->mask_interrupts;
 }


 err = devm_hwrng_register(dev, &priv->rng);
 if (err)
  dev_err(dev, "hwrng registration failed\n");
 else
  dev_info(dev, "hwrng registered\n");

 return err;
}
