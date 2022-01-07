
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __prom_console_write_buf (char const*,int) ;

void prom_console_write_buf(const char *buf, int len)
{
 while (len) {
  int n = __prom_console_write_buf(buf, len);
  if (n < 0)
   continue;
  len -= n;
  buf += len;
 }
}
