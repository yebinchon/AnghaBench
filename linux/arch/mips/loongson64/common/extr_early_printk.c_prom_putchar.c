
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_LSR ;
 int UART_LSR_THRE ;
 int UART_TX ;
 scalar_t__* _loongson_uart_base ;
 int serial_in (unsigned char*,int ) ;
 int serial_out (unsigned char*,int ,char) ;

void prom_putchar(char c)
{
 int timeout;
 unsigned char *uart_base;

 uart_base = (unsigned char *)_loongson_uart_base[0];
 timeout = 1024;

 while (((serial_in(uart_base, UART_LSR) & UART_LSR_THRE) == 0) &&
   (timeout-- > 0))
  ;

 serial_out(uart_base, UART_TX, c);
}
