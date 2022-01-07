
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int suspend_state_t ;
struct TYPE_2__ {int pmcsr; } ;


 int ETIMEDOUT ;
 int PMCSR_SLP ;
 int dev_err (int ,char*) ;
 int in_be32 (int *) ;
 int pmc_dev ;
 TYPE_1__* pmc_regs ;
 int setbits32 (int *,int) ;
 scalar_t__ spin_event_timeout (int,int,int) ;

__attribute__((used)) static int pmc_suspend_enter(suspend_state_t state)
{
 int ret;

 setbits32(&pmc_regs->pmcsr, PMCSR_SLP);



 ret = spin_event_timeout((in_be32(&pmc_regs->pmcsr) & PMCSR_SLP) == 0,
     10000, 10) ? 0 : -ETIMEDOUT;
 if (ret)
  dev_err(pmc_dev, "tired waiting for SLP bit to clear\n");
 return ret;
}
