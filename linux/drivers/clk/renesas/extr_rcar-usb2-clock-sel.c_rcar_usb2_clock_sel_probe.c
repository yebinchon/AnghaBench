
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct clk_init_data* init; } ;
struct usb2_clock_sel_priv {int extal; int xtal; TYPE_1__ hw; struct clk* base; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct clk_init_data {char* name; scalar_t__ num_parents; int * parent_names; scalar_t__ flags; int * ops; } ;
struct clk {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int clk_disable_unprepare (struct clk*) ;
 int clk_get_rate (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 struct clk* clk_register (int *,TYPE_1__*) ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct usb2_clock_sel_priv*) ;
 struct clk* devm_clk_get (struct device*,char*) ;
 struct usb2_clock_sel_priv* devm_kzalloc (struct device*,int,int ) ;
 struct clk* devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int of_clk_add_hw_provider (struct device_node*,int ,TYPE_1__*) ;
 int of_clk_hw_simple_get ;
 int platform_set_drvdata (struct platform_device*,struct usb2_clock_sel_priv*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int usb2_clock_sel_clock_ops ;

__attribute__((used)) static int rcar_usb2_clock_sel_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct usb2_clock_sel_priv *priv;
 struct clk *clk;
 struct clk_init_data init;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->base))
  return PTR_ERR(priv->base);

 pm_runtime_enable(dev);
 pm_runtime_get_sync(dev);

 clk = devm_clk_get(dev, "usb_extal");
 if (!IS_ERR(clk) && !clk_prepare_enable(clk)) {
  priv->extal = !!clk_get_rate(clk);
  clk_disable_unprepare(clk);
 }
 clk = devm_clk_get(dev, "usb_xtal");
 if (!IS_ERR(clk) && !clk_prepare_enable(clk)) {
  priv->xtal = !!clk_get_rate(clk);
  clk_disable_unprepare(clk);
 }

 if (!priv->extal && !priv->xtal) {
  dev_err(dev, "This driver needs usb_extal or usb_xtal\n");
  return -ENOENT;
 }

 platform_set_drvdata(pdev, priv);
 dev_set_drvdata(dev, priv);

 init.name = "rcar_usb2_clock_sel";
 init.ops = &usb2_clock_sel_clock_ops;
 init.flags = 0;
 init.parent_names = ((void*)0);
 init.num_parents = 0;
 priv->hw.init = &init;

 clk = clk_register(((void*)0), &priv->hw);
 if (IS_ERR(clk))
  return PTR_ERR(clk);

 return of_clk_add_hw_provider(np, of_clk_hw_simple_get, &priv->hw);
}
