
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int tsk; scalar_t__ sig; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int disable_irq_nosync (int) ;
 int irqbits ;
 int irqbits_lock ;
 int send_sig (scalar_t__,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* vm86_irqs ;

__attribute__((used)) static irqreturn_t irq_handler(int intno, void *dev_id)
{
 int irq_bit;
 unsigned long flags;

 spin_lock_irqsave(&irqbits_lock, flags);
 irq_bit = 1 << intno;
 if ((irqbits & irq_bit) || !vm86_irqs[intno].tsk)
  goto out;
 irqbits |= irq_bit;
 if (vm86_irqs[intno].sig)
  send_sig(vm86_irqs[intno].sig, vm86_irqs[intno].tsk, 1);




 disable_irq_nosync(intno);
 spin_unlock_irqrestore(&irqbits_lock, flags);
 return IRQ_HANDLED;

out:
 spin_unlock_irqrestore(&irqbits_lock, flags);
 return IRQ_NONE;
}
