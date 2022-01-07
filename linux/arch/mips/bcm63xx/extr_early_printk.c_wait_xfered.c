
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_IR_REG ;
 unsigned int UART_IR_STAT (int ) ;
 int UART_IR_TXEMPTY ;
 unsigned int bcm_uart0_readl (int ) ;

__attribute__((used)) static void wait_xfered(void)
{
 unsigned int val;


 do {
  val = bcm_uart0_readl(UART_IR_REG);
  if (val & UART_IR_STAT(UART_IR_TXEMPTY))
   break;
 } while (1);
}
