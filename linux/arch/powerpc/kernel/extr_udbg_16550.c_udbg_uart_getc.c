
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSR_DR ;
 int UART_LSR ;
 int UART_RBR ;
 int cpu_relax () ;
 int udbg_uart_in (int ) ;

__attribute__((used)) static int udbg_uart_getc(void)
{
 if (!udbg_uart_in)
  return -1;

 while (!(udbg_uart_in(UART_LSR) & LSR_DR))
  cpu_relax();
 return udbg_uart_in(UART_RBR);
}
