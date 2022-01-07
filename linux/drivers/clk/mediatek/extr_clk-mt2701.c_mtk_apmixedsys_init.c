
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
 int CLK_APMIXED_NR ;
 int ENOMEM ;
 int apmixed_fixed_divs ;
 int apmixed_plls ;
 struct clk_onecell_data* mtk_alloc_clk_data (int ) ;
 int mtk_clk_register_factors (int ,int ,struct clk_onecell_data*) ;
 int mtk_clk_register_plls (struct device_node*,int ,int ,struct clk_onecell_data*) ;
 int of_clk_add_provider (struct device_node*,int ,struct clk_onecell_data*) ;
 int of_clk_src_onecell_get ;

__attribute__((used)) static int mtk_apmixedsys_init(struct platform_device *pdev)
{
 struct clk_onecell_data *clk_data;
 struct device_node *node = pdev->dev.of_node;

 clk_data = mtk_alloc_clk_data(CLK_APMIXED_NR);
 if (!clk_data)
  return -ENOMEM;

 mtk_clk_register_plls(node, apmixed_plls, ARRAY_SIZE(apmixed_plls),
        clk_data);
 mtk_clk_register_factors(apmixed_fixed_divs, ARRAY_SIZE(apmixed_fixed_divs),
        clk_data);

 return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
}
