
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int) ;
 scalar_t__ eeh_enabled () ;
 int eeh_send_failure_event (int *) ;

__attribute__((used)) static irqreturn_t pnv_eeh_event(int irq, void *data)
{






 disable_irq_nosync(irq);

 if (eeh_enabled())
  eeh_send_failure_event(((void*)0));

 return IRQ_HANDLED;
}
