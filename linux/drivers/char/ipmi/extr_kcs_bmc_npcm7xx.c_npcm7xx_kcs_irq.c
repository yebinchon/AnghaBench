
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcs_bmc {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int kcs_bmc_handle_event (struct kcs_bmc*) ;

__attribute__((used)) static irqreturn_t npcm7xx_kcs_irq(int irq, void *arg)
{
 struct kcs_bmc *kcs_bmc = arg;

 if (!kcs_bmc_handle_event(kcs_bmc))
  return IRQ_HANDLED;

 return IRQ_NONE;
}
