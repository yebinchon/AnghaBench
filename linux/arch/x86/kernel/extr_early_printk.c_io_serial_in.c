
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int inb (unsigned long) ;

__attribute__((used)) static unsigned int io_serial_in(unsigned long addr, int offset)
{
 return inb(addr + offset);
}
