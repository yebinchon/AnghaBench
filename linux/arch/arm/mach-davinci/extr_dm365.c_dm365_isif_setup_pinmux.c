
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DM365_VIN_CAM_HD ;
 int DM365_VIN_CAM_VD ;
 int DM365_VIN_CAM_WEN ;
 int DM365_VIN_YIN0_3_EN ;
 int DM365_VIN_YIN4_7_EN ;
 int davinci_cfg_reg (int ) ;

__attribute__((used)) static void dm365_isif_setup_pinmux(void)
{
 davinci_cfg_reg(DM365_VIN_CAM_WEN);
 davinci_cfg_reg(DM365_VIN_CAM_VD);
 davinci_cfg_reg(DM365_VIN_CAM_HD);
 davinci_cfg_reg(DM365_VIN_YIN4_7_EN);
 davinci_cfg_reg(DM365_VIN_YIN0_3_EN);
}
