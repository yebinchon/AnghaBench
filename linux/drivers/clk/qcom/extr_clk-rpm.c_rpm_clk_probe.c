
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct rpm_clk_desc {size_t num_clks; struct clk_rpm** clks; } ;
struct rpm_cc {size_t num_clks; int xo_lock; struct clk_rpm** clks; } ;
struct qcom_rpm {int dummy; } ;
struct TYPE_5__ {int of_node; int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct clk_rpm {int hw; struct rpm_cc* rpm_cc; struct qcom_rpm* rpm; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int clk_rpm_handoff (struct clk_rpm*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct qcom_rpm* dev_get_drvdata (int ) ;
 int devm_clk_hw_register (TYPE_1__*,int *) ;
 struct rpm_cc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int mutex_init (int *) ;
 int of_clk_add_hw_provider (int ,int ,struct rpm_cc*) ;
 struct rpm_clk_desc* of_device_get_match_data (TYPE_1__*) ;
 int qcom_rpm_clk_hw_get ;

__attribute__((used)) static int rpm_clk_probe(struct platform_device *pdev)
{
 struct rpm_cc *rcc;
 int ret;
 size_t num_clks, i;
 struct qcom_rpm *rpm;
 struct clk_rpm **rpm_clks;
 const struct rpm_clk_desc *desc;

 rpm = dev_get_drvdata(pdev->dev.parent);
 if (!rpm) {
  dev_err(&pdev->dev, "Unable to retrieve handle to RPM\n");
  return -ENODEV;
 }

 desc = of_device_get_match_data(&pdev->dev);
 if (!desc)
  return -EINVAL;

 rpm_clks = desc->clks;
 num_clks = desc->num_clks;

 rcc = devm_kzalloc(&pdev->dev, sizeof(*rcc), GFP_KERNEL);
 if (!rcc)
  return -ENOMEM;

 rcc->clks = rpm_clks;
 rcc->num_clks = num_clks;
 mutex_init(&rcc->xo_lock);

 for (i = 0; i < num_clks; i++) {
  if (!rpm_clks[i])
   continue;

  rpm_clks[i]->rpm = rpm;
  rpm_clks[i]->rpm_cc = rcc;

  ret = clk_rpm_handoff(rpm_clks[i]);
  if (ret)
   goto err;
 }

 for (i = 0; i < num_clks; i++) {
  if (!rpm_clks[i])
   continue;

  ret = devm_clk_hw_register(&pdev->dev, &rpm_clks[i]->hw);
  if (ret)
   goto err;
 }

 ret = of_clk_add_hw_provider(pdev->dev.of_node, qcom_rpm_clk_hw_get,
         rcc);
 if (ret)
  goto err;

 return 0;
err:
 dev_err(&pdev->dev, "Error registering RPM Clock driver (%d)\n", ret);
 return ret;
}
