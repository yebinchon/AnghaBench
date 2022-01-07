
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_FLAG_TXFE ;
 int UART_READ (int ) ;
 int UART_REG_DATA ;
 int UART_REG_FLAG ;
 int UART_WRITE (int ,int) ;

void board_putc(int ch)
{
 while ((UART_READ(UART_REG_FLAG) & UART_FLAG_TXFE) == 0);

 UART_WRITE(UART_REG_DATA, ch);

 while ((UART_READ(UART_REG_FLAG) & UART_FLAG_TXFE) == 0);
}
