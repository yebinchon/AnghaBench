
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,unsigned long) ;

__attribute__((used)) static void io_serial_out(unsigned long addr, int offset, int value)
{
 outb(value, addr + offset);
}
