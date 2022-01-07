
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {char* name; int cleanup; int init; int read; } ;
struct iproc_rng200_dev {TYPE_1__ rng; int base; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int devm_hwrng_register (struct device*,TYPE_1__*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct iproc_rng200_dev* devm_kzalloc (struct device*,int,int ) ;
 int iproc_rng200_cleanup ;
 int iproc_rng200_init ;
 int iproc_rng200_read ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int iproc_rng200_probe(struct platform_device *pdev)
{
 struct iproc_rng200_dev *priv;
 struct resource *res;
 struct device *dev = &pdev->dev;
 int ret;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(dev, "failed to get rng resources\n");
  return -EINVAL;
 }

 priv->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(priv->base)) {
  dev_err(dev, "failed to remap rng regs\n");
  return PTR_ERR(priv->base);
 }

 priv->rng.name = "iproc-rng200",
 priv->rng.read = iproc_rng200_read,
 priv->rng.init = iproc_rng200_init,
 priv->rng.cleanup = iproc_rng200_cleanup,


 ret = devm_hwrng_register(dev, &priv->rng);
 if (ret) {
  dev_err(dev, "hwrng registration failed\n");
  return ret;
 }

 dev_info(dev, "hwrng registered\n");

 return 0;
}
