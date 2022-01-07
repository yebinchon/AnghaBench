
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSR ;
 int TXR ;
 int XMTRDY ;
 int cpu_relax () ;
 int early_serial_base ;
 int serial_in (int ,int ) ;
 int serial_out (int ,int ,unsigned char) ;

__attribute__((used)) static int early_serial_putc(unsigned char ch)
{
 unsigned timeout = 0xffff;

 while ((serial_in(early_serial_base, LSR) & XMTRDY) == 0 && --timeout)
  cpu_relax();
 serial_out(early_serial_base, TXR, ch);
 return timeout ? 0 : -1;
}
