
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int in_addr_t ;


 int sprintf (char*,char*,int,int,int,int) ;

char *conv_addr (in_addr_t a, char *buf) {
  static char abuf[64];
  if (!buf) {
    buf = abuf;
  }
  sprintf (buf, "%d.%d.%d.%d", a&255, (a>>8)&255, (a>>16)&255, a>>24);
  return buf;
}
