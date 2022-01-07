
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;





 int IMX_CHIP_REVISION_1_0 ;
 int clk_on_imx6q () ;
 int imx_get_soc_revision () ;

__attribute__((used)) static int ldb_di_sel_by_clock_id(int clock_id)
{
 switch (clock_id) {
 case 128:
  if (clk_on_imx6q() &&
      imx_get_soc_revision() == IMX_CHIP_REVISION_1_0)
   return -ENOENT;
  return 0;
 case 131:
  return 1;
 case 130:
  return 2;
 case 132:
  return 3;
 case 129:
  return 4;
 default:
  return -ENOENT;
 }
}
