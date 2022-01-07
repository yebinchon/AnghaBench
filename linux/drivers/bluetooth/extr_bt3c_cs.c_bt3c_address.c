
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ADDR_H ;
 scalar_t__ ADDR_L ;
 int outb (unsigned short,scalar_t__) ;

__attribute__((used)) static inline void bt3c_address(unsigned int iobase, unsigned short addr)
{
 outb(addr & 0xff, iobase + ADDR_L);
 outb((addr >> 8) & 0xff, iobase + ADDR_H);
}
