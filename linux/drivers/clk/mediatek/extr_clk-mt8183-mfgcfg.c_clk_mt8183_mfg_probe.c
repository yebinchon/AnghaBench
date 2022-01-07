
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct clk_onecell_data {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int CLK_MFG_NR_CLK ;
 int mfg_clks ;
 struct clk_onecell_data* mtk_alloc_clk_data (int ) ;
 int mtk_clk_register_gates_with_dev (struct device_node*,int ,int ,struct clk_onecell_data*,TYPE_1__*) ;
 int of_clk_add_provider (struct device_node*,int ,struct clk_onecell_data*) ;
 int of_clk_src_onecell_get ;
 int pm_runtime_enable (TYPE_1__*) ;

__attribute__((used)) static int clk_mt8183_mfg_probe(struct platform_device *pdev)
{
 struct clk_onecell_data *clk_data;
 struct device_node *node = pdev->dev.of_node;

 pm_runtime_enable(&pdev->dev);

 clk_data = mtk_alloc_clk_data(CLK_MFG_NR_CLK);

 mtk_clk_register_gates_with_dev(node, mfg_clks, ARRAY_SIZE(mfg_clks),
   clk_data, &pdev->dev);

 return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
}
