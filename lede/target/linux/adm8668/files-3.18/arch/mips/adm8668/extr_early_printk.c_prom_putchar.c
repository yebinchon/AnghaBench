
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART01x_DR ;
 int UART01x_FR ;
 int UART01x_FR_TXFF ;
 int UART_READ (int ) ;
 int UART_WRITE (char,int ) ;

void prom_putchar(char c)
{
 UART_WRITE(c, UART01x_DR);
 while ((UART_READ(UART01x_FR) & UART01x_FR_TXFF) != 0)
  ;
}
