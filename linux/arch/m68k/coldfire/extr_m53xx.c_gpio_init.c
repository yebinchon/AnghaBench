
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCFGPIO_PAR_TIMER ;
 int MCFGPIO_PAR_UART ;
 int MCFGPIO_PCLRR_TIMER ;
 int MCFGPIO_PDDR_TIMER ;
 int MCF_GPIO_PAR_UART_PAR_URXD0 ;
 int MCF_GPIO_PAR_UART_PAR_UTXD0 ;
 int writeb (int,int ) ;
 int writew (int,int ) ;

void gpio_init(void)
{

 writew(MCF_GPIO_PAR_UART_PAR_URXD0 | MCF_GPIO_PAR_UART_PAR_UTXD0,
  MCFGPIO_PAR_UART);





 writeb(0x00, MCFGPIO_PAR_TIMER);
 writeb(0x08, MCFGPIO_PDDR_TIMER);
 writeb(0x00, MCFGPIO_PCLRR_TIMER);
}
