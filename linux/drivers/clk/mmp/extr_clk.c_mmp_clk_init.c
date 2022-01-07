
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clk_num; struct clk** clks; } ;
struct mmp_clk_unit {int nr_clks; TYPE_1__ clk_data; struct clk** clk_table; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;


 int GFP_KERNEL ;
 struct clk** kcalloc (int,int,int ) ;
 int of_clk_add_provider (struct device_node*,int ,TYPE_1__*) ;
 int of_clk_src_onecell_get ;

void mmp_clk_init(struct device_node *np, struct mmp_clk_unit *unit,
  int nr_clks)
{
 struct clk **clk_table;

 clk_table = kcalloc(nr_clks, sizeof(struct clk *), GFP_KERNEL);
 if (!clk_table)
  return;

 unit->clk_table = clk_table;
 unit->nr_clks = nr_clks;
 unit->clk_data.clks = clk_table;
 unit->clk_data.clk_num = nr_clks;
 of_clk_add_provider(np, of_clk_src_onecell_get, &unit->clk_data);
}
