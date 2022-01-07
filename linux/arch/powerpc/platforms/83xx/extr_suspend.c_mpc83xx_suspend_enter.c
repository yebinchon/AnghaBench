
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int suspend_state_t ;
struct TYPE_2__ {int config1; int mask; int config; } ;


 int EAGAIN ;
 int PMCCR1_PME_EN ;
 int PMCCR1_POWER_OFF ;
 int PMCCR_DLPEN ;
 int PMCCR_SLPEN ;
 int PMCER_ALL ;
 int PMCER_PMCI ;
 scalar_t__ deep_sleeping ;
 int enable_kernel_fp () ;
 int immrbase ;
 int in_be32 (int *) ;
 int mpc6xx_enter_standby () ;
 int mpc83xx_enter_deep_sleep (int ) ;
 int mpc83xx_suspend_restore_regs () ;
 int mpc83xx_suspend_save_regs () ;
 int out_be32 (int *,int) ;
 int pci_pm_state ;
 TYPE_1__* pmc_regs ;
 scalar_t__ wake_from_pci ;

__attribute__((used)) static int mpc83xx_suspend_enter(suspend_state_t state)
{
 int ret = -EAGAIN;





 if (wake_from_pci) {
  if (pci_pm_state != (deep_sleeping ? 3 : 2))
   goto out;

  out_be32(&pmc_regs->config1,
           in_be32(&pmc_regs->config1) | PMCCR1_PME_EN);
 }






 out_be32(&pmc_regs->config, PMCCR_SLPEN | PMCCR_DLPEN);






 if (deep_sleeping) {
  mpc83xx_suspend_save_regs();

  out_be32(&pmc_regs->mask, PMCER_ALL);

  out_be32(&pmc_regs->config1,
           in_be32(&pmc_regs->config1) | PMCCR1_POWER_OFF);

  enable_kernel_fp();

  mpc83xx_enter_deep_sleep(immrbase);

  out_be32(&pmc_regs->config1,
           in_be32(&pmc_regs->config1) & ~PMCCR1_POWER_OFF);

  out_be32(&pmc_regs->mask, PMCER_PMCI);

  mpc83xx_suspend_restore_regs();
 } else {
  out_be32(&pmc_regs->mask, PMCER_PMCI);

  mpc6xx_enter_standby();
 }

 ret = 0;

out:
 out_be32(&pmc_regs->config1,
          in_be32(&pmc_regs->config1) & ~PMCCR1_PME_EN);

 return ret;
}
