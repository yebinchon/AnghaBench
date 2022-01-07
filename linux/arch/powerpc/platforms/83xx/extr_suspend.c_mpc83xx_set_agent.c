
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; int config1; } ;


 int PMCCR1_USE_STATE ;
 int PMCER_PMCI ;
 int agent_thread_fn ;
 int kthread_run (int ,int *,char*) ;
 int out_be32 (int *,int ) ;
 TYPE_1__* pmc_regs ;

__attribute__((used)) static void mpc83xx_set_agent(void)
{
 out_be32(&pmc_regs->config1, PMCCR1_USE_STATE);
 out_be32(&pmc_regs->mask, PMCER_PMCI);

 kthread_run(agent_thread_fn, ((void*)0), "PCI power mgt");
}
