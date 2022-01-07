
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IRQ_MASK ;
 int IRQ_STATUS_REG ;
 int do_IRQ (int) ;
 int fls (int) ;
 int intc_read_reg (int ) ;
 int spurious_interrupt () ;

__attribute__((used)) static void adm8668_irq_cascade(void)
{
 int irq;
 u32 intsrc;

 intsrc = intc_read_reg(IRQ_STATUS_REG) & IRQ_MASK;
 if (intsrc) {
  irq = fls(intsrc) - 1;
  do_IRQ(irq);
 } else
  spurious_interrupt();
}
