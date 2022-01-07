
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axi_clkgen {int dummy; } ;


 int AXI_CLKGEN_V2_REG_RESET ;
 unsigned int AXI_CLKGEN_V2_RESET_ENABLE ;
 unsigned int AXI_CLKGEN_V2_RESET_MMCM_ENABLE ;
 int axi_clkgen_write (struct axi_clkgen*,int ,unsigned int) ;

__attribute__((used)) static void axi_clkgen_mmcm_enable(struct axi_clkgen *axi_clkgen,
 bool enable)
{
 unsigned int val = AXI_CLKGEN_V2_RESET_ENABLE;

 if (enable)
  val |= AXI_CLKGEN_V2_RESET_MMCM_ENABLE;

 axi_clkgen_write(axi_clkgen, AXI_CLKGEN_V2_REG_RESET, val);
}
