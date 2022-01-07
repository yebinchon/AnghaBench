
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* __u8 ;


 scalar_t__ REG_COMMAND ;
 int REG_COMMAND_RX_WIN_ONE ;
 int REG_COMMAND_RX_WIN_TWO ;
 void* inb (unsigned int) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static int bluecard_read(unsigned int iobase, unsigned int offset, __u8 *buf, int size)
{
 int i, n, len;

 outb(REG_COMMAND_RX_WIN_ONE, iobase + REG_COMMAND);

 len = inb(iobase + offset);
 n = 0;
 i = 1;

 while (n < len) {

  if (i == 16) {
   outb(REG_COMMAND_RX_WIN_TWO, iobase + REG_COMMAND);
   i = 0;
  }

  buf[n] = inb(iobase + offset + i);

  n++;
  i++;

 }

 return len;
}
