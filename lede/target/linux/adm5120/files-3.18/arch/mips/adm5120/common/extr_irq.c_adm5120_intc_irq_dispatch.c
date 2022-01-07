
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADM5120_INTC_IRQ_BASE ;
 unsigned long INTC_INT_ALL ;
 int INTC_REG_IRQ_STATUS ;
 int do_IRQ (int) ;
 int fls (unsigned long) ;
 unsigned long intc_read_reg (int ) ;
 int spurious_interrupt () ;

__attribute__((used)) static void adm5120_intc_irq_dispatch(void)
{
 unsigned long status;
 int irq;

 status = intc_read_reg(INTC_REG_IRQ_STATUS) & INTC_INT_ALL;
 if (status) {
  irq = ADM5120_INTC_IRQ_BASE + fls(status) - 1;
  do_IRQ(irq);
 } else
  spurious_interrupt();
}
