
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IMX_CHIP_REVISION_1_0 ;
 int IMX_CHIP_REVISION_2_0 ;
 int IMX_CHIP_REVISION_2_1 ;
 int IMX_CHIP_REVISION_UNKNOWN ;
 scalar_t__ MX35_IIM_BASE_ADDR ;
 int MX35_IO_ADDRESS (scalar_t__) ;
 scalar_t__ MXC_IIMSREV ;
 int imx_readl (int ) ;

__attribute__((used)) static int mx35_read_cpu_rev(void)
{
 u32 rev;

 rev = imx_readl(MX35_IO_ADDRESS(MX35_IIM_BASE_ADDR + MXC_IIMSREV));
 switch (rev) {
 case 0x00:
  return IMX_CHIP_REVISION_1_0;
 case 0x10:
  return IMX_CHIP_REVISION_2_0;
 case 0x11:
  return IMX_CHIP_REVISION_2_1;
 default:
  return IMX_CHIP_REVISION_UNKNOWN;
 }
}
