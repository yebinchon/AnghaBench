
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MPC512x_CLK_PCI ;
 size_t MPC512x_CLK_PSC3_MCLK ;
 int clk_prepare_enable (int ) ;
 int * clks ;
 scalar_t__ of_find_compatible_node (int *,char*,char*) ;

__attribute__((used)) static void mpc5121_clk_provide_migration_support(void)
{
 clk_prepare_enable(clks[MPC512x_CLK_PSC3_MCLK]);
 if (of_find_compatible_node(((void*)0), "pci", "fsl,mpc5121-pci"))
  clk_prepare_enable(clks[MPC512x_CLK_PCI]);
}
