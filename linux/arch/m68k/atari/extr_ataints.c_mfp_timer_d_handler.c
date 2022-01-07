
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfptimerbase {int mfptimer_irq; unsigned char int_mask; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int generic_handle_irq (int) ;

__attribute__((used)) static irqreturn_t mfp_timer_d_handler(int irq, void *dev_id)
{
 struct mfptimerbase *base = dev_id;
 int mach_irq;
 unsigned char ints;

 mach_irq = base->mfptimer_irq;
 ints = base->int_mask;
 for (; ints; mach_irq++, ints >>= 1) {
  if (ints & 1)
   generic_handle_irq(mach_irq);
 }
 return IRQ_HANDLED;
}
