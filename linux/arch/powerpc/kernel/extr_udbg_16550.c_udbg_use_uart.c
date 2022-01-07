
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udbg_flush ;
 int udbg_getc ;
 int udbg_getc_poll ;
 int udbg_putc ;
 int udbg_uart_flush ;
 int udbg_uart_getc ;
 int udbg_uart_getc_poll ;
 int udbg_uart_putc ;

__attribute__((used)) static void udbg_use_uart(void)
{
 udbg_putc = udbg_uart_putc;
 udbg_flush = udbg_uart_flush;
 udbg_getc = udbg_uart_getc;
 udbg_getc_poll = udbg_uart_getc_poll;
}
