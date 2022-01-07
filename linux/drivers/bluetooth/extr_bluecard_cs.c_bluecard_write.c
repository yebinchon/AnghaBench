
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int outb_p (int,unsigned int) ;

__attribute__((used)) static int bluecard_write(unsigned int iobase, unsigned int offset, __u8 *buf, int len)
{
 int i, actual;

 actual = (len > 15) ? 15 : len;

 outb_p(actual, iobase + offset);

 for (i = 0; i < actual; i++)
  outb_p(buf[i], iobase + offset + i + 1);

 return actual;
}
