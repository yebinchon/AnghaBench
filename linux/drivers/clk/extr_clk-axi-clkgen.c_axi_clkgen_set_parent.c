
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct axi_clkgen {int dummy; } ;


 int AXI_CLKGEN_V2_REG_CLKSEL ;
 int axi_clkgen_write (struct axi_clkgen*,int ,int ) ;
 struct axi_clkgen* clk_hw_to_axi_clkgen (struct clk_hw*) ;

__attribute__((used)) static int axi_clkgen_set_parent(struct clk_hw *clk_hw, u8 index)
{
 struct axi_clkgen *axi_clkgen = clk_hw_to_axi_clkgen(clk_hw);

 axi_clkgen_write(axi_clkgen, AXI_CLKGEN_V2_REG_CLKSEL, index);

 return 0;
}
