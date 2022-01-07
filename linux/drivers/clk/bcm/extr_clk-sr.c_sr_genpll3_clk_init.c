
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int iproc_pll_clk_setup (struct device_node*,int *,int *,int ,int ,int ) ;
 int sr_genpll3 ;
 int sr_genpll3_clk ;

__attribute__((used)) static void sr_genpll3_clk_init(struct device_node *node)
{
 iproc_pll_clk_setup(node, &sr_genpll3, ((void*)0), 0, sr_genpll3_clk,
       ARRAY_SIZE(sr_genpll3_clk));
}
