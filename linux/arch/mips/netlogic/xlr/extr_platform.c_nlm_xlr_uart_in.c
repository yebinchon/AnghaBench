
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct uart_port {scalar_t__ membase; } ;


 int UART_MCR ;
 int UART_MSR ;
 unsigned int nlm_read_reg (scalar_t__,int) ;

__attribute__((used)) static unsigned int nlm_xlr_uart_in(struct uart_port *p, int offset)
{
 uint64_t uartbase;
 unsigned int value;


 uartbase = (uint64_t)(long)p->membase;
 value = nlm_read_reg(uartbase, offset);


 if (offset == UART_MSR)
  value ^= 0xF0;
 else if (offset == UART_MCR)
  value ^= 0x3;

 return value;
}
