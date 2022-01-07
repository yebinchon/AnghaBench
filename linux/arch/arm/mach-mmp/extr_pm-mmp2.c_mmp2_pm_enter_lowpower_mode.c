
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int APMU_PJ_IDLE_CFG ;
 int APMU_PJ_IDLE_CFG_ISO_MODE_CNTRL_MASK ;
 int APMU_PJ_IDLE_CFG_L2_PWR_SW ;
 int APMU_PJ_IDLE_CFG_PJ_IDLE ;
 int APMU_PJ_IDLE_CFG_PJ_PWRDWN ;
 int APMU_PJ_IDLE_CFG_PWR_SW (int) ;
 int MPMU_PCR_PJ ;
 int MPMU_PCR_PJ_APBSD ;
 int MPMU_PCR_PJ_AXISD ;
 int MPMU_PCR_PJ_DDRCORSD ;
 int MPMU_PCR_PJ_SLPEN ;
 int MPMU_PCR_PJ_SPSD ;
 int MPMU_PCR_PJ_VCTCXOSD ;






 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

void mmp2_pm_enter_lowpower_mode(int state)
{
 uint32_t idle_cfg, apcr;

 idle_cfg = __raw_readl(APMU_PJ_IDLE_CFG);
 apcr = __raw_readl(MPMU_PCR_PJ);
 apcr &= ~(MPMU_PCR_PJ_SLPEN | MPMU_PCR_PJ_DDRCORSD | MPMU_PCR_PJ_APBSD
   | MPMU_PCR_PJ_AXISD | MPMU_PCR_PJ_VCTCXOSD | (1 << 13));
 idle_cfg &= ~APMU_PJ_IDLE_CFG_PJ_IDLE;

 switch (state) {
 case 128:
  apcr |= MPMU_PCR_PJ_SLPEN;
  apcr |= MPMU_PCR_PJ_VCTCXOSD;

 case 131:
  apcr |= MPMU_PCR_PJ_SLPEN;

 case 132:
  apcr |= MPMU_PCR_PJ_APBSD;

 case 133:
  apcr |= MPMU_PCR_PJ_AXISD;
  apcr |= MPMU_PCR_PJ_DDRCORSD;
  idle_cfg |= APMU_PJ_IDLE_CFG_PJ_PWRDWN;
  apcr |= MPMU_PCR_PJ_SPSD;

 case 130:
  idle_cfg |= APMU_PJ_IDLE_CFG_PJ_IDLE;
  idle_cfg &= ~APMU_PJ_IDLE_CFG_ISO_MODE_CNTRL_MASK;
  idle_cfg |= APMU_PJ_IDLE_CFG_PWR_SW(3)
   | APMU_PJ_IDLE_CFG_L2_PWR_SW;
  break;
 case 129:
  apcr &= ~MPMU_PCR_PJ_SPSD;
  break;
 }


 apcr |= (1 << 30) | (1 << 25);


 __raw_writel(idle_cfg, APMU_PJ_IDLE_CFG);
 __raw_writel(apcr, MPMU_PCR_PJ);
}
