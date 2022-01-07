
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char DLAB ;
 scalar_t__ DLH ;
 scalar_t__ DLL ;
 scalar_t__ FCR ;
 scalar_t__ IER ;
 scalar_t__ LCR ;
 scalar_t__ MCR ;
 int early_serial_base ;
 unsigned char inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static void early_serial_init(int port, int baud)
{
 unsigned char c;
 unsigned divisor;

 outb(0x3, port + LCR);
 outb(0, port + IER);
 outb(0, port + FCR);
 outb(0x3, port + MCR);

 divisor = 115200 / baud;
 c = inb(port + LCR);
 outb(c | DLAB, port + LCR);
 outb(divisor & 0xff, port + DLL);
 outb((divisor >> 8) & 0xff, port + DLH);
 outb(c & ~DLAB, port + LCR);

 early_serial_base = port;
}
