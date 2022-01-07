
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int intc_init () ;
 int switch_init () ;
 int uart_init () ;

void board_init(void)
{
 intc_init();
 switch_init();
 uart_init();
}
