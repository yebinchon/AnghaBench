
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int sr; } ;
struct TYPE_2__ {int mask; unsigned int irq; } ;


 int EIRQ_REG ;
 int FRAME_CLEAR_REG ;
 int IIRQ_REG ;
 int IRQ_INPROGRESS ;
 unsigned int Q40_IRQ6_MASK ;
 unsigned int Q40_IRQ_EXT_MASK ;
 unsigned int Q40_IRQ_FRAME ;
 unsigned int Q40_IRQ_FRAME_MASK ;
 unsigned int Q40_IRQ_KEYBOARD ;
 unsigned int Q40_IRQ_KEYB_MASK ;
 unsigned int Q40_IRQ_SAMPLE ;
 unsigned int Q40_IRQ_SER_MASK ;
 int aliased_irq ;
 scalar_t__ ccleirq ;
 int disable_irq (unsigned int) ;
 int disabled ;
 int do_IRQ (unsigned int,struct pt_regs*) ;
 TYPE_1__* eirqs ;
 int enable_irq (unsigned int) ;
 int floppy_hardint () ;
 unsigned int master_inb (int ) ;
 int master_outb (int,int ) ;
 scalar_t__ mext_disabled ;
 int pr_warn (char*,unsigned int) ;
 int* q40_state ;

__attribute__((used)) static void q40_irq_handler(unsigned int irq, struct pt_regs *fp)
{
 unsigned mir, mer;
 int i;


 mir = master_inb(IIRQ_REG);







 switch (irq) {
 case 4:
 case 6:
  do_IRQ(Q40_IRQ_SAMPLE, fp);
  return;
 }
 if (mir & Q40_IRQ_FRAME_MASK) {
  do_IRQ(Q40_IRQ_FRAME, fp);
  master_outb(-1, FRAME_CLEAR_REG);
 }
 if ((mir & Q40_IRQ_SER_MASK) || (mir & Q40_IRQ_EXT_MASK)) {
  mer = master_inb(EIRQ_REG);
  for (i = 0; eirqs[i].mask; i++) {
   if (mer & eirqs[i].mask) {
    irq = eirqs[i].irq;






    if (irq > 4 && irq <= 15 && mext_disabled) {

     goto iirq;
    }
    if (q40_state[irq] & IRQ_INPROGRESS) {
     fp->sr = (((fp->sr) & (~0x700))+0x200);
     disabled = 1;

     goto iirq;
    }
    q40_state[irq] |= IRQ_INPROGRESS;
    do_IRQ(irq, fp);
    q40_state[irq] &= ~IRQ_INPROGRESS;





    if (disabled) {






     disabled = 0;


    }

    return;
   }
  }
  if (mer && ccleirq > 0 && !aliased_irq) {
   pr_warn("ISA interrupt from unknown source? EIRQ_REG = %x\n",
    mer);
   ccleirq--;
  }
 }
 iirq:
 mir = master_inb(IIRQ_REG);

 if (mir & Q40_IRQ_KEYB_MASK)
  do_IRQ(Q40_IRQ_KEYBOARD, fp);

 return;
}
