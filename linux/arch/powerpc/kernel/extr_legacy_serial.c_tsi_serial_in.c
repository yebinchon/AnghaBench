
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; scalar_t__ membase; } ;


 int UART_IIR ;
 unsigned int readb (scalar_t__) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static unsigned int tsi_serial_in(struct uart_port *p, int offset)
{
 unsigned int tmp;
 offset = offset << p->regshift;
 if (offset == UART_IIR) {
  tmp = readl(p->membase + (UART_IIR & ~3));
  return (tmp >> 16) & 0xff;
 } else
  return readb(p->membase + offset);
}
