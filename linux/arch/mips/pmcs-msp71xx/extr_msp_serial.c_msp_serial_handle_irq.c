
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; scalar_t__ membase; struct msp_uart_data* private_data; } ;
struct msp_uart_data {int last_lcr; } ;


 int UART_IIR ;
 unsigned int UART_IIR_BUSY ;
 int UART_LCR ;
 unsigned int readb (scalar_t__) ;
 scalar_t__ serial8250_handle_irq (struct uart_port*,unsigned int) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int msp_serial_handle_irq(struct uart_port *p)
{
 struct msp_uart_data *d = p->private_data;
 unsigned int iir = readb(p->membase + (UART_IIR << p->regshift));

 if (serial8250_handle_irq(p, iir)) {
  return 1;
 } else if ((iir & UART_IIR_BUSY) == UART_IIR_BUSY) {
  (void)readb(p->membase + 0xc0);
  writeb(d->last_lcr, p->membase + (UART_LCR << p->regshift));

  return 1;
 }

 return 0;
}
