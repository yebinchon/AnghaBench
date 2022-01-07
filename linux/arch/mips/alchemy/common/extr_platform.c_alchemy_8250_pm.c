
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int membase; } ;


 int CPHYSADDR (int ) ;
 int alchemy_uart_disable (int ) ;
 int alchemy_uart_enable (int ) ;
 int serial8250_do_pm (struct uart_port*,unsigned int,unsigned int) ;

__attribute__((used)) static void alchemy_8250_pm(struct uart_port *port, unsigned int state,
       unsigned int old_state)
{
}
