
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_8__ {struct clk_init_data* init; } ;
struct vexpress_osc {void* rate_max; void* rate_min; TYPE_5__ hw; struct clk* reg; } ;
struct TYPE_7__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct clk_init_data {int name; scalar_t__ num_parents; scalar_t__ flags; int * ops; } ;
struct clk {int dummy; } ;


 int ARRAY_SIZE (void**) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int clk_hw_set_rate_range (TYPE_5__*,void*,void*) ;
 struct clk* clk_register (int *,TYPE_5__*) ;
 int dev_dbg (TYPE_1__*,char*,int ) ;
 int dev_name (TYPE_1__*) ;
 struct vexpress_osc* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct clk* devm_regmap_init_vexpress_config (TYPE_1__*) ;
 int of_clk_add_provider (int ,int ,struct clk*) ;
 int of_clk_src_simple_get ;
 scalar_t__ of_property_read_string (int ,char*,int *) ;
 scalar_t__ of_property_read_u32_array (int ,char*,void**,int ) ;
 int vexpress_osc_ops ;

__attribute__((used)) static int vexpress_osc_probe(struct platform_device *pdev)
{
 struct clk_init_data init;
 struct vexpress_osc *osc;
 struct clk *clk;
 u32 range[2];

 osc = devm_kzalloc(&pdev->dev, sizeof(*osc), GFP_KERNEL);
 if (!osc)
  return -ENOMEM;

 osc->reg = devm_regmap_init_vexpress_config(&pdev->dev);
 if (IS_ERR(osc->reg))
  return PTR_ERR(osc->reg);

 if (of_property_read_u32_array(pdev->dev.of_node, "freq-range", range,
   ARRAY_SIZE(range)) == 0) {
  osc->rate_min = range[0];
  osc->rate_max = range[1];
 }

 if (of_property_read_string(pdev->dev.of_node, "clock-output-names",
   &init.name) != 0)
  init.name = dev_name(&pdev->dev);

 init.ops = &vexpress_osc_ops;
 init.flags = 0;
 init.num_parents = 0;

 osc->hw.init = &init;

 clk = clk_register(((void*)0), &osc->hw);
 if (IS_ERR(clk))
  return PTR_ERR(clk);

 of_clk_add_provider(pdev->dev.of_node, of_clk_src_simple_get, clk);
 clk_hw_set_rate_range(&osc->hw, osc->rate_min, osc->rate_max);

 dev_dbg(&pdev->dev, "Registered clock '%s'\n", init.name);

 return 0;
}
