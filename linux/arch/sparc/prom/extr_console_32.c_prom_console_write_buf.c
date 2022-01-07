
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prom_nbputchar (char const*) ;

void prom_console_write_buf(const char *buf, int len)
{
 while (len) {
  int n = prom_nbputchar(buf);
  if (n < 0)
   continue;
  len--;
  buf++;
 }
}
