
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int APM_DISABLED ;
 int APM_USER_SUSPEND ;
 int IRQ_HANDLED ;
 int apm_queue_event (int ) ;

__attribute__((used)) static irqreturn_t hp6x0_apm_interrupt(int irq, void *dev)
{
 if (!APM_DISABLED)
  apm_queue_event(APM_USER_SUSPEND);

 return IRQ_HANDLED;
}
