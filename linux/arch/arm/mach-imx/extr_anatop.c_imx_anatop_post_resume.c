
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IMX_DDR_TYPE_LPDDR2 ;
 scalar_t__ cpu_is_imx6sl () ;
 int imx_anatop_disconnect_high_snvs (int) ;
 int imx_anatop_enable_2p5_pulldown (int) ;
 int imx_anatop_enable_fet_odrive (int) ;
 int imx_anatop_enable_weak2p5 (int) ;
 scalar_t__ imx_mmdc_get_ddr_type () ;

void imx_anatop_post_resume(void)
{
 if (imx_mmdc_get_ddr_type() == IMX_DDR_TYPE_LPDDR2)
  imx_anatop_enable_2p5_pulldown(0);
 else
  imx_anatop_enable_weak2p5(0);

 imx_anatop_enable_fet_odrive(0);

 if (cpu_is_imx6sl())
  imx_anatop_disconnect_high_snvs(0);

}
