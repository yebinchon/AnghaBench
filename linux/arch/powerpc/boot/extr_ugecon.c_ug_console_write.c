
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ug_putc (char) ;

void ug_console_write(const char *buf, int len)
{
 char *b = (char *)buf;

 while (len--) {
  if (*b == '\n')
   ug_putc('\r');
  ug_putc(*b++);
 }
}
