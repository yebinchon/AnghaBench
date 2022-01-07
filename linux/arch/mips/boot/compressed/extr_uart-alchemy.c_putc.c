
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AU1000_UART0_PHYS_ADDR ;
 int alchemy_uart_putchar (int ,char) ;

void putc(char c)
{
 alchemy_uart_putchar(AU1000_UART0_PHYS_ADDR, c);
}
