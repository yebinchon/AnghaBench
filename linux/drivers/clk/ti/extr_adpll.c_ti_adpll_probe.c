
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_adpll_platform_data {int dummy; } ;
struct ti_adpll_data {int outputs; struct device_node* np; int clocks; struct device* dev; int iobase; int pa; int lock; struct ti_adpll_platform_data const* c; } ;
struct ti_adpll_clock {int dummy; } ;
struct resource {int start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {struct ti_adpll_platform_data* data; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int TI_ADPLL_NR_CLOCKS ;
 int WARN_ON (int) ;
 int dev_err (struct device*,char*,int) ;
 int dev_set_drvdata (struct device*,struct ti_adpll_data*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 int devm_kcalloc (struct device*,int ,int,int ) ;
 struct ti_adpll_data* devm_kzalloc (struct device*,int,int ) ;
 int of_clk_add_provider (struct device_node*,int ,int *) ;
 int of_clk_src_onecell_get ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int spin_lock_init (int *) ;
 int ti_adpll_free_resources (struct ti_adpll_data*) ;
 int ti_adpll_init_children_adpll_lj (struct ti_adpll_data*) ;
 int ti_adpll_init_children_adpll_s (struct ti_adpll_data*) ;
 int ti_adpll_init_dco (struct ti_adpll_data*) ;
 int ti_adpll_init_inputs (struct ti_adpll_data*) ;
 int ti_adpll_init_registers (struct ti_adpll_data*) ;
 int ti_adpll_match ;

__attribute__((used)) static int ti_adpll_probe(struct platform_device *pdev)
{
 struct device_node *node = pdev->dev.of_node;
 struct device *dev = &pdev->dev;
 const struct of_device_id *match;
 const struct ti_adpll_platform_data *pdata;
 struct ti_adpll_data *d;
 struct resource *res;
 int err;

 match = of_match_device(ti_adpll_match, dev);
 if (match)
  pdata = match->data;
 else
  return -ENODEV;

 d = devm_kzalloc(dev, sizeof(*d), GFP_KERNEL);
 if (!d)
  return -ENOMEM;
 d->dev = dev;
 d->np = node;
 d->c = pdata;
 dev_set_drvdata(d->dev, d);
 spin_lock_init(&d->lock);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;
 d->pa = res->start;

 d->iobase = devm_ioremap_resource(dev, res);
 if (IS_ERR(d->iobase)) {
  dev_err(dev, "could not get IO base: %li\n",
   PTR_ERR(d->iobase));
  return PTR_ERR(d->iobase);
 }

 err = ti_adpll_init_registers(d);
 if (err)
  return err;

 err = ti_adpll_init_inputs(d);
 if (err)
  return err;

 d->clocks = devm_kcalloc(d->dev,
     TI_ADPLL_NR_CLOCKS,
     sizeof(struct ti_adpll_clock),
     GFP_KERNEL);
 if (!d->clocks)
  return -ENOMEM;

 err = ti_adpll_init_dco(d);
 if (err) {
  dev_err(dev, "could not register dco: %i\n", err);
  goto free;
 }

 err = ti_adpll_init_children_adpll_s(d);
 if (err)
  goto free;
 err = ti_adpll_init_children_adpll_lj(d);
 if (err)
  goto free;

 err = of_clk_add_provider(d->np, of_clk_src_onecell_get, &d->outputs);
 if (err)
  goto free;

 return 0;

free:
 WARN_ON(1);
 ti_adpll_free_resources(d);

 return err;
}
