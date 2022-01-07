
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct TYPE_3__ {scalar_t__ clk_num; int clks; } ;


 scalar_t__ MPC512x_CLK_LAST_PUBLIC ;
 TYPE_1__ clk_data ;
 int clks ;
 int of_clk_add_provider (struct device_node*,int ,TYPE_1__*) ;
 int of_clk_src_onecell_get ;

__attribute__((used)) static void mpc5121_clk_register_of_provider(struct device_node *np)
{
 clk_data.clks = clks;
 clk_data.clk_num = MPC512x_CLK_LAST_PUBLIC + 1;
 of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
}
