
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int APMU_MC_HW_SLP_TYPE ;
 int APMU_MOH_IDLE_CFG ;
 int APMU_MOH_IDLE_CFG_MOH_DIS_MC_SW_REQ ;
 int APMU_MOH_IDLE_CFG_MOH_IDLE ;
 int APMU_MOH_IDLE_CFG_MOH_L2_PWR_SW (int) ;
 int APMU_MOH_IDLE_CFG_MOH_MC_WAKE_EN ;
 int APMU_MOH_IDLE_CFG_MOH_PWRDWN ;
 int APMU_MOH_IDLE_CFG_MOH_PWR_SW (int) ;
 int MPMU_APCR ;
 int MPMU_APCR_APBSD ;
 int MPMU_APCR_AXISD ;
 int MPMU_APCR_BBSD ;
 int MPMU_APCR_DDRCORSD ;
 int MPMU_APCR_DSPSD ;
 int MPMU_APCR_DTCMSD ;
 int MPMU_APCR_MSASLPEN ;
 int MPMU_APCR_SLPEN ;
 int MPMU_APCR_STBYEN ;
 int MPMU_APCR_VCTCXOSD ;






 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

void pxa910_pm_enter_lowpower_mode(int state)
{
 uint32_t idle_cfg, apcr;

 idle_cfg = __raw_readl(APMU_MOH_IDLE_CFG);
 apcr = __raw_readl(MPMU_APCR);

 apcr &= ~(MPMU_APCR_DDRCORSD | MPMU_APCR_APBSD | MPMU_APCR_AXISD
  | MPMU_APCR_VCTCXOSD | MPMU_APCR_STBYEN);
 idle_cfg &= ~(APMU_MOH_IDLE_CFG_MOH_IDLE
  | APMU_MOH_IDLE_CFG_MOH_PWRDWN);

 switch (state) {
 case 128:

  apcr |= MPMU_APCR_STBYEN | MPMU_APCR_APBSD;

 case 129:
  apcr |= MPMU_APCR_SLPEN;
  apcr |= MPMU_APCR_VCTCXOSD;

 case 132:
  apcr |= MPMU_APCR_DDRCORSD;

 case 133:
  apcr |= MPMU_APCR_AXISD;

 case 131:
  idle_cfg |= APMU_MOH_IDLE_CFG_MOH_IDLE;
  idle_cfg |= APMU_MOH_IDLE_CFG_MOH_PWRDWN;
  idle_cfg |= APMU_MOH_IDLE_CFG_MOH_PWR_SW(3)
   | APMU_MOH_IDLE_CFG_MOH_L2_PWR_SW(3);

 case 130:
  break;
 }


 idle_cfg |= APMU_MOH_IDLE_CFG_MOH_DIS_MC_SW_REQ;
 idle_cfg |= APMU_MOH_IDLE_CFG_MOH_MC_WAKE_EN;
 __raw_writel(0x0, APMU_MC_HW_SLP_TYPE);


 apcr |= MPMU_APCR_DSPSD | MPMU_APCR_DTCMSD | MPMU_APCR_BBSD
  | MPMU_APCR_MSASLPEN;


 apcr |= MPMU_APCR_SLPEN;


 __raw_writel(idle_cfg, APMU_MOH_IDLE_CFG);
 __raw_writel(apcr, MPMU_APCR);

}
