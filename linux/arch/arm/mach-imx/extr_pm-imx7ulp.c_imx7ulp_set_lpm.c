
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum ulp_cpu_pwr_mode { ____Placeholder_ulp_cpu_pwr_mode } ulp_cpu_pwr_mode ;


 int BM_PMCTRL_PSTOPO ;
 int BM_PMCTRL_RUNM ;
 int BM_PMCTRL_STOPM ;
 int BP_PMCTRL_PSTOPO ;
 int EINVAL ;
 int PSTOPO_PSTOP1 ;
 int PSTOPO_PSTOP2 ;
 int PSTOPO_PSTOP3 ;
 scalar_t__ SMC_PMCTRL ;



 int readl_relaxed (scalar_t__) ;
 scalar_t__ smc1_base ;
 int writel_relaxed (int,scalar_t__) ;

int imx7ulp_set_lpm(enum ulp_cpu_pwr_mode mode)
{
 u32 val = readl_relaxed(smc1_base + SMC_PMCTRL);


 val &= ~(BM_PMCTRL_RUNM | BM_PMCTRL_STOPM | BM_PMCTRL_PSTOPO);

 switch (mode) {
 case 130:

  val |= PSTOPO_PSTOP3 << BP_PMCTRL_PSTOPO;
  break;
 case 128:

  val |= PSTOPO_PSTOP2 << BP_PMCTRL_PSTOPO;
  break;
 case 129:

  val |= PSTOPO_PSTOP1 << BP_PMCTRL_PSTOPO;
  break;
 default:
  return -EINVAL;
 }

 writel_relaxed(val, smc1_base + SMC_PMCTRL);

 return 0;
}
