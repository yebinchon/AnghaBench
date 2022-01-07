
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int config1; } ;


 int PMCCR1_CURR_STATE ;
 int PMCCR1_NEXT_STATE ;
 int PMCCR1_NEXT_STATE_SHIFT ;
 int agent_wq ;
 int in_be32 (int *) ;
 scalar_t__ is_pci_agent ;
 int out_be32 (int *,int) ;
 int pci_pm_state ;
 TYPE_1__* pmc_regs ;
 int wake_up (int *) ;

__attribute__((used)) static int mpc83xx_change_state(void)
{
 u32 curr_state;
 u32 reg_cfg1 = in_be32(&pmc_regs->config1);

 if (is_pci_agent) {
  pci_pm_state = (reg_cfg1 & PMCCR1_NEXT_STATE) >>
                 PMCCR1_NEXT_STATE_SHIFT;
  curr_state = reg_cfg1 & PMCCR1_CURR_STATE;

  if (curr_state != pci_pm_state) {
   reg_cfg1 &= ~PMCCR1_CURR_STATE;
   reg_cfg1 |= pci_pm_state;
   out_be32(&pmc_regs->config1, reg_cfg1);

   wake_up(&agent_wq);
   return 1;
  }
 }

 return 0;
}
