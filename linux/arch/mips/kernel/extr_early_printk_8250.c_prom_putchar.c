
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_LSR ;
 int UART_LSR_TEMT ;
 int UART_LSR_THRE ;
 int UART_TX ;
 int serial8250_base ;
 unsigned int serial8250_tx_timeout ;
 int serial_in (int ) ;
 int serial_out (int ,char) ;

void prom_putchar(char c)
{
 unsigned int timeout;
 int status, bits;

 if (!serial8250_base)
  return;

 timeout = serial8250_tx_timeout;
 bits = UART_LSR_TEMT | UART_LSR_THRE;

 do {
  status = serial_in(UART_LSR);

  if (--timeout == 0)
   break;
 } while ((status & bits) != bits);

 if (timeout)
  serial_out(UART_TX, c);
}
