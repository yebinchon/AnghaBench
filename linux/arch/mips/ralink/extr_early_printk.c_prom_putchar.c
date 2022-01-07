
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_SOC_MT7621 ;
 scalar_t__ IS_ENABLED (int ) ;
 int UART_LSR_THRE ;
 int UART_REG_LSR ;
 int UART_REG_LSR_RT2880 ;
 int UART_REG_TX ;
 int UART_TX ;
 int find_uart_base () ;
 int init_complete ;
 scalar_t__ soc_is_mt7628 () ;
 int uart_r32 (int ) ;
 int uart_w32 (unsigned char,int ) ;

void prom_putchar(char ch)
{
 if (!init_complete) {
  find_uart_base();
  init_complete = 1;
 }

 if (IS_ENABLED(CONFIG_SOC_MT7621) || soc_is_mt7628()) {
  uart_w32((unsigned char)ch, UART_TX);
  while ((uart_r32(UART_REG_LSR) & UART_LSR_THRE) == 0)
   ;
 } else {
  while ((uart_r32(UART_REG_LSR_RT2880) & UART_LSR_THRE) == 0)
   ;
  uart_w32((unsigned char)ch, UART_REG_TX);
  while ((uart_r32(UART_REG_LSR_RT2880) & UART_LSR_THRE) == 0)
   ;
 }
}
