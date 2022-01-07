
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MPC512x_SOC_MPC5121 ;
 int MPC512x_SOC_MPC5123 ;
 int MPC512x_SOC_MPC5125 ;
 scalar_t__ of_machine_is_compatible (char*) ;
 int soc ;

__attribute__((used)) static void mpc512x_clk_determine_soc(void)
{
 if (of_machine_is_compatible("fsl,mpc5121")) {
  soc = MPC512x_SOC_MPC5121;
  return;
 }
 if (of_machine_is_compatible("fsl,mpc5123")) {
  soc = MPC512x_SOC_MPC5123;
  return;
 }
 if (of_machine_is_compatible("fsl,mpc5125")) {
  soc = MPC512x_SOC_MPC5125;
  return;
 }
}
