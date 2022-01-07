
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct resource {int dummy; } ;
struct platform_device {int name; int dev; } ;
struct TYPE_2__ {int read; int name; } ;
struct pic32_rng {scalar_t__ clk; TYPE_1__ rng; scalar_t__ base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 scalar_t__ RNGCON ;
 int TRNGEN ;
 int TRNGMOD ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 scalar_t__ devm_clk_get (int *,int *) ;
 scalar_t__ devm_ioremap_resource (int *,struct resource*) ;
 struct pic32_rng* devm_kzalloc (int *,int,int ) ;
 int hwrng_register (TYPE_1__*) ;
 int pic32_rng_read ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pic32_rng*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int pic32_rng_probe(struct platform_device *pdev)
{
 struct pic32_rng *priv;
 struct resource *res;
 u32 v;
 int ret;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(priv->base))
  return PTR_ERR(priv->base);

 priv->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(priv->clk))
  return PTR_ERR(priv->clk);

 ret = clk_prepare_enable(priv->clk);
 if (ret)
  return ret;


 v = TRNGEN | TRNGMOD;
 writel(v, priv->base + RNGCON);

 priv->rng.name = pdev->name;
 priv->rng.read = pic32_rng_read;

 ret = hwrng_register(&priv->rng);
 if (ret)
  goto err_register;

 platform_set_drvdata(pdev, priv);

 return 0;

err_register:
 clk_disable_unprepare(priv->clk);
 return ret;
}
