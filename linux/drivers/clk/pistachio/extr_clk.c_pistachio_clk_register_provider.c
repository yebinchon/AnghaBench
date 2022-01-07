
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int clk_num; int * clks; } ;
struct pistachio_clk_provider {TYPE_1__ clk_data; int node; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int of_clk_add_provider (int ,int ,TYPE_1__*) ;
 int of_clk_src_onecell_get ;
 int pr_warn (char*,unsigned int,int ) ;

void pistachio_clk_register_provider(struct pistachio_clk_provider *p)
{
 unsigned int i;

 for (i = 0; i < p->clk_data.clk_num; i++) {
  if (IS_ERR(p->clk_data.clks[i]))
   pr_warn("Failed to register clock %d: %ld\n", i,
    PTR_ERR(p->clk_data.clks[i]));
 }

 of_clk_add_provider(p->node, of_clk_src_onecell_get, &p->clk_data);
}
