
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; } ;


 unsigned int CRTSCTS ;
 int PSCR ;
 unsigned short __raw_readw (int ) ;
 int __raw_writew (unsigned short,int ) ;

__attribute__((used)) static void sh7722_sci_init_pins(struct uart_port *port, unsigned int cflag)
{
 unsigned short data;

 if (port->mapbase == 0xffe00000) {
  data = __raw_readw(PSCR);
  data &= ~0x03cf;
  if (!(cflag & CRTSCTS))
   data |= 0x0340;

  __raw_writew(data, PSCR);
 }
}
