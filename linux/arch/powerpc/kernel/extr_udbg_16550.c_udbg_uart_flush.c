
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSR_THRE ;
 int UART_LSR ;
 int cpu_relax () ;
 int udbg_uart_in (int ) ;

__attribute__((used)) static void udbg_uart_flush(void)
{
 if (!udbg_uart_in)
  return;


 while ((udbg_uart_in(UART_LSR) & LSR_THRE) == 0)
  cpu_relax();
}
