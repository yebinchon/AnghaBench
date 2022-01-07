
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct clk_onecell_data {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int CLK_MM_NR_CLK ;
 int mm_clks ;
 struct clk_onecell_data* mtk_alloc_clk_data (int ) ;
 int mtk_clk_register_gates (struct device_node*,int ,int ,struct clk_onecell_data*) ;
 int of_clk_add_provider (struct device_node*,int ,struct clk_onecell_data*) ;
 int of_clk_src_onecell_get ;

__attribute__((used)) static int clk_mt6779_mm_probe(struct platform_device *pdev)
{
 struct clk_onecell_data *clk_data;
 struct device_node *node = pdev->dev.of_node;

 clk_data = mtk_alloc_clk_data(CLK_MM_NR_CLK);

 mtk_clk_register_gates(node, mm_clks, ARRAY_SIZE(mm_clks),
          clk_data);

 return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
}
