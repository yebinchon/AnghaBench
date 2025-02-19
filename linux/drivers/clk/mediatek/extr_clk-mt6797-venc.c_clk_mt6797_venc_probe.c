
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {int name; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct clk_onecell_data {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int CLK_VENC_NR ;
 int dev_err (TYPE_1__*,char*,int ,int) ;
 struct clk_onecell_data* mtk_alloc_clk_data (int ) ;
 int mtk_clk_register_gates (struct device_node*,int ,int ,struct clk_onecell_data*) ;
 int of_clk_add_provider (struct device_node*,int ,struct clk_onecell_data*) ;
 int of_clk_src_onecell_get ;
 int venc_clks ;

__attribute__((used)) static int clk_mt6797_venc_probe(struct platform_device *pdev)
{
 struct clk_onecell_data *clk_data;
 int r;
 struct device_node *node = pdev->dev.of_node;

 clk_data = mtk_alloc_clk_data(CLK_VENC_NR);

 mtk_clk_register_gates(node, venc_clks, ARRAY_SIZE(venc_clks),
          clk_data);

 r = of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
 if (r)
  dev_err(&pdev->dev,
   "could not register clock provider: %s: %d\n",
   pdev->name, r);

 return r;
}
