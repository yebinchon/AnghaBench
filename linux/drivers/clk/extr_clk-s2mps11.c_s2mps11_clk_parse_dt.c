
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sec_pmic_dev {TYPE_1__* dev; } ;
struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct clk_init_data {int name; } ;
struct TYPE_3__ {int of_node; } ;


 int EINVAL ;
 struct device_node* ERR_PTR (int ) ;
 int S2MPS11_CLKS_NUM ;
 int dev_err (TYPE_2__*,char*) ;
 struct sec_pmic_dev* dev_get_drvdata (int ) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_property_read_string_index (struct device_node*,char*,int,int *) ;

__attribute__((used)) static struct device_node *s2mps11_clk_parse_dt(struct platform_device *pdev,
  struct clk_init_data *clks_init)
{
 struct sec_pmic_dev *iodev = dev_get_drvdata(pdev->dev.parent);
 struct device_node *clk_np;
 int i;

 if (!iodev->dev->of_node)
  return ERR_PTR(-EINVAL);

 clk_np = of_get_child_by_name(iodev->dev->of_node, "clocks");
 if (!clk_np) {
  dev_err(&pdev->dev, "could not find clock sub-node\n");
  return ERR_PTR(-EINVAL);
 }

 for (i = 0; i < S2MPS11_CLKS_NUM; i++)
  of_property_read_string_index(clk_np, "clock-output-names", i,
    &clks_init[i].name);

 return clk_np;
}
