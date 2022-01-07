
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int nr_resets; struct device_node* of_node; int * ops; int owner; } ;
struct clk_onecell_data {int clk_num; scalar_t__* clks; } ;
struct sun9i_mmc_clk_data {scalar_t__ reset; TYPE_1__ rcdev; int lock; scalar_t__ membase; scalar_t__ clk; struct clk_onecell_data clk_data; } ;
struct resource {int dummy; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {char* name; } ;
struct clk {int dummy; } ;


 int DIV_ROUND_UP (int ,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int SUN9I_MMC_GATE_BIT ;
 int SUN9I_MMC_WIDTH ;
 int THIS_MODULE ;
 char* __clk_get_name (scalar_t__) ;
 scalar_t__ clk_register_gate (TYPE_2__*,char const*,char const*,int ,scalar_t__,int ,int ,int *) ;
 int clk_unregister (scalar_t__) ;
 int dev_err (TYPE_2__*,char*,...) ;
 scalar_t__ devm_clk_get (TYPE_2__*,int *) ;
 scalar_t__ devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 scalar_t__* devm_kcalloc (TYPE_2__*,int,int,int ) ;
 struct sun9i_mmc_clk_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 scalar_t__ devm_reset_control_get_exclusive (TYPE_2__*,int *) ;
 int of_clk_add_provider (struct device_node*,int ,struct clk_onecell_data*) ;
 int of_clk_del_provider (struct device_node*) ;
 int of_clk_src_onecell_get ;
 int of_property_read_string_index (struct device_node*,char*,int,char const**) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sun9i_mmc_clk_data*) ;
 int reset_control_assert (scalar_t__) ;
 int reset_control_deassert (scalar_t__) ;
 int reset_controller_register (TYPE_1__*) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;
 int sun9i_mmc_reset_ops ;

__attribute__((used)) static int sun9i_a80_mmc_config_clk_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct sun9i_mmc_clk_data *data;
 struct clk_onecell_data *clk_data;
 const char *clk_name = np->name;
 const char *clk_parent;
 struct resource *r;
 int count, i, ret;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 spin_lock_init(&data->lock);

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 count = DIV_ROUND_UP((resource_size(r)), SUN9I_MMC_WIDTH);
 data->membase = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(data->membase))
  return PTR_ERR(data->membase);

 clk_data = &data->clk_data;
 clk_data->clk_num = count;
 clk_data->clks = devm_kcalloc(&pdev->dev, count, sizeof(struct clk *),
          GFP_KERNEL);
 if (!clk_data->clks)
  return -ENOMEM;

 data->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(data->clk)) {
  dev_err(&pdev->dev, "Could not get clock\n");
  return PTR_ERR(data->clk);
 }

 data->reset = devm_reset_control_get_exclusive(&pdev->dev, ((void*)0));
 if (IS_ERR(data->reset)) {
  dev_err(&pdev->dev, "Could not get reset control\n");
  return PTR_ERR(data->reset);
 }

 ret = reset_control_deassert(data->reset);
 if (ret) {
  dev_err(&pdev->dev, "Reset deassert err %d\n", ret);
  return ret;
 }

 clk_parent = __clk_get_name(data->clk);
 for (i = 0; i < count; i++) {
  of_property_read_string_index(np, "clock-output-names",
           i, &clk_name);

  clk_data->clks[i] = clk_register_gate(&pdev->dev, clk_name,
            clk_parent, 0,
            data->membase + SUN9I_MMC_WIDTH * i,
            SUN9I_MMC_GATE_BIT, 0,
            &data->lock);

  if (IS_ERR(clk_data->clks[i])) {
   ret = PTR_ERR(clk_data->clks[i]);
   goto err_clk_register;
  }
 }

 ret = of_clk_add_provider(np, of_clk_src_onecell_get, clk_data);
 if (ret)
  goto err_clk_provider;

 data->rcdev.owner = THIS_MODULE;
 data->rcdev.nr_resets = count;
 data->rcdev.ops = &sun9i_mmc_reset_ops;
 data->rcdev.of_node = pdev->dev.of_node;

 ret = reset_controller_register(&data->rcdev);
 if (ret)
  goto err_rc_reg;

 platform_set_drvdata(pdev, data);

 return 0;

err_rc_reg:
 of_clk_del_provider(np);

err_clk_provider:
 for (i = 0; i < count; i++)
  clk_unregister(clk_data->clks[i]);

err_clk_register:
 reset_control_assert(data->reset);

 return ret;
}
