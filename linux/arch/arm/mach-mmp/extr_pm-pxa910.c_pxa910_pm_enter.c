
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int APMU_MOH_IDLE_CFG ;
 unsigned int APMU_MOH_IDLE_CFG_MOH_PWRDWN ;
 unsigned int APMU_MOH_IDLE_CFG_MOH_SRAM_PWRDWN ;
 int CIU_REG (int) ;
 int EAGAIN ;
 int ICU_INT_CONF (int ) ;
 int IRQ_PXA910_PMIC_INT ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;
 int cpu_do_idle () ;
 int outer_disable () ;
 int outer_resume () ;
 int readl (int ) ;
 int udelay (int) ;

__attribute__((used)) static int pxa910_pm_enter(suspend_state_t state)
{
 unsigned int idle_cfg, reg = 0;


 reg = __raw_readl(ICU_INT_CONF(IRQ_PXA910_PMIC_INT));
 if ((reg & 0x3) == 0)
  return -EAGAIN;

 idle_cfg = __raw_readl(APMU_MOH_IDLE_CFG);
 idle_cfg |= APMU_MOH_IDLE_CFG_MOH_PWRDWN
  | APMU_MOH_IDLE_CFG_MOH_SRAM_PWRDWN;
 __raw_writel(idle_cfg, APMU_MOH_IDLE_CFG);


 outer_disable();

 while (!(readl(CIU_REG(0x8)) & (1 << 16)))
  udelay(1);

 cpu_do_idle();


 outer_resume();

 while (!(readl(CIU_REG(0x8)) & (1 << 16)))
  udelay(1);

 idle_cfg = __raw_readl(APMU_MOH_IDLE_CFG);
 idle_cfg &= ~(APMU_MOH_IDLE_CFG_MOH_PWRDWN
  | APMU_MOH_IDLE_CFG_MOH_SRAM_PWRDWN);
 __raw_writel(idle_cfg, APMU_MOH_IDLE_CFG);

 return 0;
}
