
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_THR ;
 int udbg_uart_flush () ;
 int udbg_uart_out (int ,char) ;

__attribute__((used)) static void udbg_uart_putc(char c)
{
 if (!udbg_uart_out)
  return;

 if (c == '\n')
  udbg_uart_putc('\r');
 udbg_uart_flush();
 udbg_uart_out(UART_THR, c);
}
