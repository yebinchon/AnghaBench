
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; scalar_t__ membase; struct msp_uart_data* private_data; } ;
struct msp_uart_data {int last_lcr; } ;


 int UART_LCR ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void msp_serial_out(struct uart_port *p, int offset, int value)
{
 struct msp_uart_data *d = p->private_data;

 if (offset == UART_LCR)
  d->last_lcr = value;

 offset <<= p->regshift;
 writeb(value, p->membase + offset);
}
