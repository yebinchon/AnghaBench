
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int CRTSCTS ;
 int SCPCR ;
 int SCPDR ;
 unsigned short __raw_readb (int ) ;
 unsigned short __raw_readw (int ) ;
 int __raw_writeb (unsigned short,int ) ;
 int __raw_writew (unsigned short,int ) ;

__attribute__((used)) static void sh770x_sci_init_pins(struct uart_port *port, unsigned int cflag)
{
 unsigned short data;


 data = __raw_readw(SCPCR);

 __raw_writew(data & 0x0fcf, SCPCR);

 if (!(cflag & CRTSCTS)) {

  data = __raw_readw(SCPCR);


  __raw_writew((data & 0x0fcf) | 0x1000, SCPCR);

  data = __raw_readb(SCPDR);

  __raw_writeb(data & 0xbf, SCPDR);
 }
}
