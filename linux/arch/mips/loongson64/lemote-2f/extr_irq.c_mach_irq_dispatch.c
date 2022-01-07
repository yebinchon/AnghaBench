
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CAUSEF_IP2 ;
 unsigned int CAUSEF_IP3 ;
 unsigned int CAUSEF_IP6 ;
 unsigned int CAUSEF_IP7 ;
 int LOONGSON_TIMER_IRQ ;
 int LOONGSON_UART_IRQ ;
 int bonito_irqdispatch () ;
 int do_IRQ (int ) ;
 int do_perfcnt_IRQ () ;
 int i8259_irqdispatch () ;
 int spurious_interrupt () ;

void mach_irq_dispatch(unsigned int pending)
{
 if (pending & CAUSEF_IP7)
  do_IRQ(LOONGSON_TIMER_IRQ);
 else if (pending & CAUSEF_IP6) {
  do_perfcnt_IRQ();
  bonito_irqdispatch();
 } else if (pending & CAUSEF_IP3)
  do_IRQ(LOONGSON_UART_IRQ);
 else if (pending & CAUSEF_IP2)
  i8259_irqdispatch();
 else
  spurious_interrupt();
}
