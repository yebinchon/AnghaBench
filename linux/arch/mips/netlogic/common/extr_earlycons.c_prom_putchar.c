
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int NETLOGIC_IO_UART_0_OFFSET ;
 int UART_LSR ;
 int UART_LSR_THRE ;
 int UART_TX ;
 int nlm_get_uart_regbase (int ,int ) ;
 int nlm_mmio_base (int ) ;
 int nlm_read_reg (int ,int ) ;
 int nlm_write_reg (int ,int ,char) ;

void prom_putchar(char c)
{
 uint64_t uartbase;






 while ((nlm_read_reg(uartbase, UART_LSR) & UART_LSR_THRE) == 0)
  ;
 nlm_write_reg(uartbase, UART_TX, c);
}
