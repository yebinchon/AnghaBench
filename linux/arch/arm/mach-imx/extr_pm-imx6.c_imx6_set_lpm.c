
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mxc_cpu_pwr_mode { ____Placeholder_mxc_cpu_pwr_mode } mxc_cpu_pwr_mode ;


 int BM_CLPCR_ARM_CLK_DIS_ON_LPM ;
 int BM_CLPCR_BYPASS_PMIC_READY ;
 int BM_CLPCR_BYP_MMDC_CH0_LPM_HS ;
 int BM_CLPCR_BYP_MMDC_CH1_LPM_HS ;
 int BM_CLPCR_LPM ;
 int BM_CLPCR_SBYOS ;
 int BM_CLPCR_VSTBY ;
 int BP_CLPCR_LPM ;
 int BP_CLPCR_STBY_COUNT ;
 scalar_t__ CLPCR ;
 int EINVAL ;





 scalar_t__ ccm_base ;
 int cpu_is_imx6sl () ;
 int cpu_is_imx6sll () ;
 int cpu_is_imx6sx () ;
 int cpu_is_imx6ul () ;
 int cpu_is_imx6ull () ;
 int cpu_is_imx6ulz () ;
 int imx_gpc_hwirq_mask (int ) ;
 int imx_gpc_hwirq_unmask (int ) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

int imx6_set_lpm(enum mxc_cpu_pwr_mode mode)
{
 u32 val = readl_relaxed(ccm_base + CLPCR);

 val &= ~BM_CLPCR_LPM;
 switch (mode) {
 case 130:
  break;
 case 129:
  val |= 0x1 << BP_CLPCR_LPM;
  val |= BM_CLPCR_ARM_CLK_DIS_ON_LPM;
  break;
 case 131:
  val |= 0x2 << BP_CLPCR_LPM;
  val &= ~BM_CLPCR_VSTBY;
  val &= ~BM_CLPCR_SBYOS;
  if (cpu_is_imx6sl())
   val |= BM_CLPCR_BYPASS_PMIC_READY;
  if (cpu_is_imx6sl() || cpu_is_imx6sx() || cpu_is_imx6ul() ||
      cpu_is_imx6ull() || cpu_is_imx6sll() || cpu_is_imx6ulz())
   val |= BM_CLPCR_BYP_MMDC_CH0_LPM_HS;
  else
   val |= BM_CLPCR_BYP_MMDC_CH1_LPM_HS;
  break;
 case 128:
  val |= 0x1 << BP_CLPCR_LPM;
  val &= ~BM_CLPCR_VSTBY;
  val &= ~BM_CLPCR_SBYOS;
  break;
 case 132:
  val |= 0x2 << BP_CLPCR_LPM;
  val |= 0x3 << BP_CLPCR_STBY_COUNT;
  val |= BM_CLPCR_VSTBY;
  val |= BM_CLPCR_SBYOS;
  if (cpu_is_imx6sl() || cpu_is_imx6sx())
   val |= BM_CLPCR_BYPASS_PMIC_READY;
  if (cpu_is_imx6sl() || cpu_is_imx6sx() || cpu_is_imx6ul() ||
      cpu_is_imx6ull() || cpu_is_imx6sll() || cpu_is_imx6ulz())
   val |= BM_CLPCR_BYP_MMDC_CH0_LPM_HS;
  else
   val |= BM_CLPCR_BYP_MMDC_CH1_LPM_HS;
  break;
 default:
  return -EINVAL;
 }
 if (mode != 130)
  imx_gpc_hwirq_unmask(0);
 writel_relaxed(val, ccm_base + CLPCR);
 if (mode != 130)
  imx_gpc_hwirq_mask(0);

 return 0;
}
