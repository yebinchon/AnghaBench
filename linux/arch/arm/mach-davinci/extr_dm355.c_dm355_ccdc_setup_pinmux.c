
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DM355_VIN_CAM_HD ;
 int DM355_VIN_CAM_VD ;
 int DM355_VIN_CAM_WEN ;
 int DM355_VIN_CINH_EN ;
 int DM355_VIN_CINL_EN ;
 int DM355_VIN_PCLK ;
 int DM355_VIN_YIN_EN ;
 int davinci_cfg_reg (int ) ;

__attribute__((used)) static void dm355_ccdc_setup_pinmux(void)
{
 davinci_cfg_reg(DM355_VIN_PCLK);
 davinci_cfg_reg(DM355_VIN_CAM_WEN);
 davinci_cfg_reg(DM355_VIN_CAM_VD);
 davinci_cfg_reg(DM355_VIN_CAM_HD);
 davinci_cfg_reg(DM355_VIN_YIN_EN);
 davinci_cfg_reg(DM355_VIN_CINL_EN);
 davinci_cfg_reg(DM355_VIN_CINH_EN);
}
