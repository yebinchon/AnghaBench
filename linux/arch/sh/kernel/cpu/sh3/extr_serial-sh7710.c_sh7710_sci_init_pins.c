
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; } ;


 int PACR ;
 int PBCR ;
 int __raw_readw (int ) ;
 int __raw_writew (int,int ) ;

__attribute__((used)) static void sh7710_sci_init_pins(struct uart_port *port, unsigned int cflag)
{
 if (port->mapbase == 0xA4400000) {
  __raw_writew(__raw_readw(PACR) & 0xffc0, PACR);
  __raw_writew(__raw_readw(PBCR) & 0x0fff, PBCR);
 } else if (port->mapbase == 0xA4410000)
  __raw_writew(__raw_readw(PBCR) & 0xf003, PBCR);
}
