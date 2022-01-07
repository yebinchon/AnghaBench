
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axi_clkgen {int dummy; } ;


 unsigned int AXI_CLKGEN_V2_DRP_STATUS_BUSY ;
 int AXI_CLKGEN_V2_REG_DRP_STATUS ;
 int EIO ;
 int axi_clkgen_read (struct axi_clkgen*,int ,unsigned int*) ;

__attribute__((used)) static int axi_clkgen_wait_non_busy(struct axi_clkgen *axi_clkgen)
{
 unsigned int timeout = 10000;
 unsigned int val;

 do {
  axi_clkgen_read(axi_clkgen, AXI_CLKGEN_V2_REG_DRP_STATUS, &val);
 } while ((val & AXI_CLKGEN_V2_DRP_STATUS_BUSY) && --timeout);

 if (val & AXI_CLKGEN_V2_DRP_STATUS_BUSY)
  return -EIO;

 return val & 0xffff;
}
