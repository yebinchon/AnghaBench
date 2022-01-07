
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ciabase {int cia_irq; int int_mask; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int intreq; } ;


 int CIA_ICR_ALL ;
 int IRQ_HANDLED ;
 TYPE_1__ amiga_custom ;
 unsigned char cia_set_irq (struct ciabase*,int ) ;
 int generic_handle_irq (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static irqreturn_t cia_handler(int irq, void *dev_id)
{
 struct ciabase *base = dev_id;
 int mach_irq;
 unsigned char ints;
 unsigned long flags;




 mach_irq = base->cia_irq;
 local_irq_save(flags);
 ints = cia_set_irq(base, CIA_ICR_ALL);
 amiga_custom.intreq = base->int_mask;
 if (ints & 1)
  generic_handle_irq(mach_irq);
 local_irq_restore(flags);
 mach_irq++, ints >>= 1;
 for (; ints; mach_irq++, ints >>= 1) {
  if (ints & 1)
   generic_handle_irq(mach_irq);
 }
 return IRQ_HANDLED;
}
