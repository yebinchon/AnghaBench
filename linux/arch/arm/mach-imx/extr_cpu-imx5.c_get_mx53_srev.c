
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IMX_CHIP_REVISION_1_0 ;
 int IMX_CHIP_REVISION_2_0 ;
 int IMX_CHIP_REVISION_2_1 ;
 int IMX_CHIP_REVISION_UNKNOWN ;
 int imx5_read_srev_reg (char*) ;

__attribute__((used)) static int get_mx53_srev(void)
{
 u32 rev = imx5_read_srev_reg("fsl,imx53-iim");

 switch (rev) {
 case 0x0:
  return IMX_CHIP_REVISION_1_0;
 case 0x2:
  return IMX_CHIP_REVISION_2_0;
 case 0x3:
  return IMX_CHIP_REVISION_2_1;
 default:
  return IMX_CHIP_REVISION_UNKNOWN;
 }
}
