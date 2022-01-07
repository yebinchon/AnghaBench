
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; int name; } ;
struct mcs814x_rng_priv {unsigned long priv; int regs; int data_read; int name; } ;
struct hwrng {unsigned long priv; int regs; int data_read; int name; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int hwrng_register (struct mcs814x_rng_priv*) ;
 int kfree (struct mcs814x_rng_priv*) ;
 struct mcs814x_rng_priv* kzalloc (int,int ) ;
 int mcs814x_rng_data_read ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mcs814x_rng_priv*) ;

__attribute__((used)) static int mcs814x_rng_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct mcs814x_rng_priv *priv;
 struct hwrng *rng;
 int ret;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv) {
  ret = -ENOMEM;
  goto out;
 }

 rng = kzalloc(sizeof(*rng), GFP_KERNEL);
 if (!rng) {
  ret = -ENOMEM;
  goto out_priv;
 }

 platform_set_drvdata(pdev, rng);
 rng->priv = (unsigned long)priv;
 rng->name = pdev->name;
 rng->data_read = mcs814x_rng_data_read;

 priv->regs = devm_ioremap_resource(&pdev->dev, res);
 if (!priv->regs) {
  ret = -ENOMEM;
  goto out_rng;
 }

 ret = hwrng_register(rng);
 if (ret) {
  dev_err(&pdev->dev, "failed to register hwrng driver\n");
  goto out;
 }

 dev_info(&pdev->dev, "registered\n");

 return ret;

out_rng:
 platform_set_drvdata(pdev, ((void*)0));
 kfree(rng);
out_priv:
 kfree(priv);
out:
 return ret;
}
