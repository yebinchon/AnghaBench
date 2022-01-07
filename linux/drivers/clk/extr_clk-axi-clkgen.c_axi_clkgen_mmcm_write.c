
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axi_clkgen {int dummy; } ;


 unsigned int AXI_CLKGEN_V2_DRP_CNTRL_SEL ;
 int AXI_CLKGEN_V2_REG_DRP_CNTRL ;
 int axi_clkgen_mmcm_read (struct axi_clkgen*,unsigned int,unsigned int*) ;
 int axi_clkgen_wait_non_busy (struct axi_clkgen*) ;
 int axi_clkgen_write (struct axi_clkgen*,int ,unsigned int) ;

__attribute__((used)) static int axi_clkgen_mmcm_write(struct axi_clkgen *axi_clkgen,
 unsigned int reg, unsigned int val, unsigned int mask)
{
 unsigned int reg_val = 0;
 int ret;

 ret = axi_clkgen_wait_non_busy(axi_clkgen);
 if (ret < 0)
  return ret;

 if (mask != 0xffff) {
  axi_clkgen_mmcm_read(axi_clkgen, reg, &reg_val);
  reg_val &= ~mask;
 }

 reg_val |= AXI_CLKGEN_V2_DRP_CNTRL_SEL | (reg << 16) | (val & mask);

 axi_clkgen_write(axi_clkgen, AXI_CLKGEN_V2_REG_DRP_CNTRL, reg_val);

 return 0;
}
