
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AM33XX_PRM_DEVICE_MOD ;
 int AM33XX_PRM_RSTCTRL_OFFSET ;
 int AM33XX_RST_GLOBAL_WARM_SW_MASK ;
 int am33xx_prm_read_reg (int ,int ) ;
 int am33xx_prm_rmw_reg_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void am33xx_prm_global_warm_sw_reset(void)
{
 am33xx_prm_rmw_reg_bits(AM33XX_RST_GLOBAL_WARM_SW_MASK,
    AM33XX_RST_GLOBAL_WARM_SW_MASK,
    AM33XX_PRM_DEVICE_MOD,
    AM33XX_PRM_RSTCTRL_OFFSET);


 (void)am33xx_prm_read_reg(AM33XX_PRM_DEVICE_MOD,
      AM33XX_PRM_RSTCTRL_OFFSET);
}
