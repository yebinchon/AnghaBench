
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
 int CLK_ETH_NR_CLK ;
 int dev_err (TYPE_1__*,char*,int ,int) ;
 int eth_clks ;
 struct clk_onecell_data* mtk_alloc_clk_data (int ) ;
 int mtk_clk_register_gates (struct device_node*,int ,int ,struct clk_onecell_data*) ;
 int mtk_register_reset_controller (struct device_node*,int,int) ;
 int of_clk_add_provider (struct device_node*,int ,struct clk_onecell_data*) ;
 int of_clk_src_onecell_get ;

__attribute__((used)) static int clk_mt7622_ethsys_init(struct platform_device *pdev)
{
 struct clk_onecell_data *clk_data;
 struct device_node *node = pdev->dev.of_node;
 int r;

 clk_data = mtk_alloc_clk_data(CLK_ETH_NR_CLK);

 mtk_clk_register_gates(node, eth_clks, ARRAY_SIZE(eth_clks),
          clk_data);

 r = of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
 if (r)
  dev_err(&pdev->dev,
   "could not register clock provider: %s: %d\n",
   pdev->name, r);

 mtk_register_reset_controller(node, 1, 0x34);

 return r;
}
