
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clk_ops; } ;
struct ti_sci_handle {TYPE_1__ ops; } ;
struct sci_clk_provider {struct device* dev; int * ops; struct ti_sci_handle const* sci; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct ti_sci_handle const*) ;
 int PTR_ERR (struct ti_sci_handle const*) ;
 int dev_err (struct device*,char*,int) ;
 struct sci_clk_provider* devm_kzalloc (struct device*,int,int ) ;
 struct ti_sci_handle* devm_ti_sci_get_handle (struct device*) ;
 int of_clk_add_hw_provider (struct device_node*,int ,struct sci_clk_provider*) ;
 int pr_err (char*) ;
 int sci_clk_get ;
 int ti_sci_init_clocks (struct sci_clk_provider*) ;
 int ti_sci_scan_clocks_from_dt (struct sci_clk_provider*) ;
 int ti_sci_scan_clocks_from_fw (struct sci_clk_provider*) ;

__attribute__((used)) static int ti_sci_clk_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct sci_clk_provider *provider;
 const struct ti_sci_handle *handle;
 int ret;

 handle = devm_ti_sci_get_handle(dev);
 if (IS_ERR(handle))
  return PTR_ERR(handle);

 provider = devm_kzalloc(dev, sizeof(*provider), GFP_KERNEL);
 if (!provider)
  return -ENOMEM;

 provider->sci = handle;
 provider->ops = &handle->ops.clk_ops;
 provider->dev = dev;
 ret = ti_sci_scan_clocks_from_dt(provider);
 if (ret) {
  dev_err(dev, "scan clocks from DT failed: %d\n", ret);
  return ret;
 }


 ret = ti_sci_init_clocks(provider);
 if (ret) {
  pr_err("ti-sci-init-clocks failed.\n");
  return ret;
 }

 return of_clk_add_hw_provider(np, sci_clk_get, provider);
}
