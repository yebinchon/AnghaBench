
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int IRQ_FMN ;
 int fmn_irqaction ;
 int nlm_cop2_disable_irqrestore (int ) ;
 int nlm_cop2_enable_irqsave () ;
 int nlm_fmn_setup_intr (int ,int) ;
 int nlm_threads_per_core ;
 int setup_irq (int ,int *) ;

void nlm_setup_fmn_irq(void)
{
 uint32_t flags;


 setup_irq(IRQ_FMN, &fmn_irqaction);

 flags = nlm_cop2_enable_irqsave();
 nlm_fmn_setup_intr(IRQ_FMN, (1 << nlm_threads_per_core) - 1);
 nlm_cop2_disable_irqrestore(flags);
}
