
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_FIFO_REG ;
 int bcm_uart0_writel (char,int ) ;
 int wait_xfered () ;

void prom_putchar(char c)
{
 wait_xfered();
 bcm_uart0_writel(c, UART_FIFO_REG);
 wait_xfered();
}
