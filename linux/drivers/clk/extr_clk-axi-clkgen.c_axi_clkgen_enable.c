
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct axi_clkgen {int dummy; } ;


 int axi_clkgen_mmcm_enable (struct axi_clkgen*,int) ;
 struct axi_clkgen* clk_hw_to_axi_clkgen (struct clk_hw*) ;

__attribute__((used)) static int axi_clkgen_enable(struct clk_hw *clk_hw)
{
 struct axi_clkgen *axi_clkgen = clk_hw_to_axi_clkgen(clk_hw);

 axi_clkgen_mmcm_enable(axi_clkgen, 1);

 return 0;
}
