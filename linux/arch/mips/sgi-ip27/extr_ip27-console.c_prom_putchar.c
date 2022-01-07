
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc3_uartregs {int iu_thr; int iu_lsr; } ;


 struct ioc3_uartregs* console_uart () ;
 int readb (int *) ;
 int writeb (char,int *) ;

void prom_putchar(char c)
{
 struct ioc3_uartregs *uart = console_uart();

 while ((readb(&uart->iu_lsr) & 0x20) == 0)
  ;
 writeb(c, &uart->iu_thr);
}
