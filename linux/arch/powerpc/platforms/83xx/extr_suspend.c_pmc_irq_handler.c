
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int irqreturn_t ;
struct TYPE_2__ {int event; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ in_be32 (int *) ;
 scalar_t__ mpc83xx_change_state () ;
 int out_be32 (int *,scalar_t__) ;
 TYPE_1__* pmc_regs ;

__attribute__((used)) static irqreturn_t pmc_irq_handler(int irq, void *dev_id)
{
 u32 event = in_be32(&pmc_regs->event);
 int ret = IRQ_NONE;

 if (mpc83xx_change_state())
  ret = IRQ_HANDLED;

 if (event) {
  out_be32(&pmc_regs->event, event);
  ret = IRQ_HANDLED;
 }

 return ret;
}
