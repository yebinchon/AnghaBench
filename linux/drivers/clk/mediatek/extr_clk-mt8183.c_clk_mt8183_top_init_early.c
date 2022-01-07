
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct TYPE_5__ {int * clks; } ;


 int ARRAY_SIZE (int ) ;
 int CLK_TOP_NR_CLK ;
 int EPROBE_DEFER ;
 int ERR_PTR (int ) ;
 TYPE_1__* mtk_alloc_clk_data (int) ;
 int mtk_clk_register_factors (int ,int ,TYPE_1__*) ;
 int of_clk_add_provider (struct device_node*,int ,TYPE_1__*) ;
 int of_clk_src_onecell_get ;
 TYPE_1__* top_clk_data ;
 int top_early_divs ;

__attribute__((used)) static void clk_mt8183_top_init_early(struct device_node *node)
{
 int i;

 top_clk_data = mtk_alloc_clk_data(CLK_TOP_NR_CLK);

 for (i = 0; i < CLK_TOP_NR_CLK; i++)
  top_clk_data->clks[i] = ERR_PTR(-EPROBE_DEFER);

 mtk_clk_register_factors(top_early_divs, ARRAY_SIZE(top_early_divs),
   top_clk_data);

 of_clk_add_provider(node, of_clk_src_onecell_get, top_clk_data);
}
