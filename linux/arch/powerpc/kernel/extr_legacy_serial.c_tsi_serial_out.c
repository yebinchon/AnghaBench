
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; scalar_t__ membase; } ;


 int UART_IER ;
 int UART_IER_UUE ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void tsi_serial_out(struct uart_port *p, int offset, int value)
{
 offset = offset << p->regshift;
 if (!((offset == UART_IER) && (value & UART_IER_UUE)))
  writeb(value, p->membase + offset);
}
