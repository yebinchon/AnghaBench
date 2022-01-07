
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct clk_hw {int dummy; } ;
struct axi_clkgen {int dummy; } ;


 int AXI_CLKGEN_V2_REG_CLKSEL ;
 int axi_clkgen_read (struct axi_clkgen*,int ,unsigned int*) ;
 struct axi_clkgen* clk_hw_to_axi_clkgen (struct clk_hw*) ;

__attribute__((used)) static u8 axi_clkgen_get_parent(struct clk_hw *clk_hw)
{
 struct axi_clkgen *axi_clkgen = clk_hw_to_axi_clkgen(clk_hw);
 unsigned int parent;

 axi_clkgen_read(axi_clkgen, AXI_CLKGEN_V2_REG_CLKSEL, &parent);

 return parent;
}
